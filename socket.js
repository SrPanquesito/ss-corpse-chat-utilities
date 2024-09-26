require('dotenv').config();

// Socket.io server initialization
let allowlist = [];
try {
    allowlist = process.env.ALLOW_LIST ? JSON.parse(process.env.ALLOW_LIST) : []
} catch (error) {
    console.error('Failed to parse ALLOW_LIST:', error)
}

let port = process.env.SOCKET_PORT || 7200;

const io = require('socket.io')(port, {
    cors: {
        origin: allowlist,
    },
    transports: ["websocket", "polling", "webtransport"]
});

// Socket live users logic
let onlineUsers = new Map();
const addOnlineUser = (user, socketId) => {
    if (!onlineUsers.has(user.id)) {
        onlineUsers.set(user.id, { ...user, socketId });
    }
};

const removeOnlineUser = (socketId) => {
    for (let [id, user] of onlineUsers) {
        if (user.socketId === socketId) {
            onlineUsers.delete(id);
            break;
        }
    }
};

const removeOnlineUserByUserId = (userId) => {
    onlineUsers.delete(userId);
};

const findOnlineUser = (id) => {
    return onlineUsers.get(id);
};

io.on('connection', (socket) => {
    socket.on('add/onlineUser', (user) => {
        addOnlineUser(user, socket.id);
        console.log('onlineUsers: ', onlineUsers.values());
        // Emit online users to all clients
        io.sockets.emit('send/onlineUsers', Array.from(onlineUsers.values()));

        // Emit new user to connected users so their contact list can get updated
        if (onlineUsers.size > 0) {
            const users = Array.from(onlineUsers.values()).filter(u=>u.id !== user.id);
            for(let i = 0; i < users.length; i++ ){
                socket.to(users[i].socketId).emit('send/newOnlineUser', user);
            }
        }
    });

    socket.on('add/newMessage', (msg) => {
        const onlineReceiver = findOnlineUser(msg.receiverId);

        if (onlineReceiver) {
            socket.to(onlineReceiver.socketId).emit('send/newMessage', {...msg});
        }
    });

    socket.on('logout', (userId) => {
        removeOnlineUserByUserId(userId);
        io.sockets.emit('send/onlineUsers', Array.from(onlineUsers.values()));
    });

    socket.on('disconnect', () => {
        removeOnlineUser(socket.id);
        io.sockets.emit('send/onlineUsers', Array.from(onlineUsers.values()));
    });
});

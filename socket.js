const io = require('socket.io')(7200, {
    cors: {
        origin: [
            'http://localhost:4000', 
            'http://corpsechat.com', 
            'https://corpsechat.com', 
            'http://www.corpsechat.com', 
            'https://www.corpsechat.com'
        ],
    }
});

let onlineUsers = [];
const addOnlineUser = (user, socketId) => {
    const checkUser = onlineUsers.some(u => u.id === user.id);

    if (!checkUser) {
        onlineUsers.push({ ...user, socketId });
    }
};

const removeOnlineUser = (socketId) => {
    onlineUsers = onlineUsers.filter(u => u.socketId !== socketId);
};

const removeOnlineUserByUserId = (userId) => {
    onlineUsers = onlineUsers.filter(u => u.id !== userId);
};

const findOnlineUser = (id) => {
    return onlineUsers.find(u => u.id === id);
};

io.on('connection', (socket) => {
    socket.on('add/onlineUser', (user) => {
        addOnlineUser(user, socket.id);
        // Emit online users to all clients
        io.sockets.emit('send/onlineUsers', onlineUsers);

        // Emit new user to connected users so their contact list can get updated
        if (onlineUsers.length > 0) {
            const users = onlineUsers.filter(u=>u.id !== user.id);
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
        io.sockets.emit('send/onlineUsers', onlineUsers);
    });

    socket.on('disconnect', () => {
        removeOnlineUser(socket.id);
        io.sockets.emit('send/onlineUsers', onlineUsers);
    });
});
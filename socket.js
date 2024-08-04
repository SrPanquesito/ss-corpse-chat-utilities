 const io = require('socket.io')(7200, {
    cors: {
        origin: ['http://localhost:4000'],
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

const findOnlineUser = (id) => {
    return onlineUsers.find(u => u.id === id);
};

io.on('connection', (socket) => {
    socket.on('add/onlineUser', (user) => {
        addOnlineUser(user, socket.id);
        socket.emit('get/onlineUsers', onlineUsers);
    });

    socket.on('send/message', (data) => {
        const onlineReceiver = findOnlineUser(data.receiver.id);

        if (onlineReceiver) {
            // Upload file to S3 ?? (imageUrl: data.file)
            socket.to(onlineReceiver.socketId).emit('get/message', {...data, imageUrl: ''});
        }
    });

    socket.on('disconnect', () => {
        removeOnlineUser(socket.id);
        socket.emit('get/onlineUsers', onlineUsers);
    });
});
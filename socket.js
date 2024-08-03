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

io.on('connection', (socket) => {
    socket.on('add/onlineUser', (user) => {
        addOnlineUser(user, socket.id);
        console.log('Emit onlineUsers', onlineUsers);
        socket.emit('get/onlineUsers', onlineUsers);
    });

    socket.on('disconnect', () => {
        removeOnlineUser(socket.id);
        socket.emit('get/onlineUsers', onlineUsers);
    });
});
const { Server } = require("socket.io");
// const client = require("./dbCache");
let connectedUsers = 0;
let stores = {};

// const { createClient } = require('@redis/client');

// const client = createClient({ socket: { port: 6379, host: "127.0.0.1" } });

// (async () => {
//     await client.connect();
// })();

// module.exports = client;
const initializeSocket = (server) => {
    const io = new Server(server, {
        cors: {
            origin: "*",
            methods: ["GET", "POST"],
        }
    });

    // io.on('connection', async (socket) => {
    //     const subdomain = socket.handshake.query.subdomain;
    //     console.log(`User connected to tenant ${subdomain}`);

    //     let liveUsersCount = await client.get(`live_users:${subdomain}`);
    //     if (liveUsersCount === null) {
    //         liveUsersCount = 0;
    //         await client.set(`live_users:${subdomain}`, liveUsersCount);
    //     } else {
    //         liveUsersCount = parseInt(liveUsersCount, 10);
    //     }
    //     // Increment the live user count in Redis
    //     await client.incr(`live_users:${subdomain}`);
    //     // Broadcast the updated count to all clients
    //     liveUsersCount = await client.get(`live_users:${subdomain}`);
    //     io.emit('liveUsersUpdate', { subdomain, liveUsersCount });

    //     socket.on('disconnect', async () => {
    //         console.log(`User disconnected from tenant ${subdomain}`);
    //         // Decrement the live user count in Redis
    //         await client.decr(`live_users:${subdomain}`);
    //         // Broadcast the updated count to all clients
    //         const liveUsersCount = await client.get(`live_users:${subdomain}`);
    //         io.emit('liveUsersUpdate', { subdomain, liveUsersCount });
    //     });
    // });
}

module.exports = initializeSocket;

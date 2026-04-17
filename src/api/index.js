const http = require('http');

const server = http.createServer((req, res) => {
    res.writeHead(200, { 'Content-Type': 'application/json' });
    res.end(JSON.stringify({ mensaje: '¡Hola desde el Backend en Node.js!' }));
});

const PORT = 3000;
server.listen(PORT, () => {
    console.log(`Servidor API corriendo en el puerto ${PORT}`);
});
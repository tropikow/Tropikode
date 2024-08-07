const http = require("http");
const PORT = 3000;

const server = http.createServer((req, res) => {
  const method = req.method;
  console.log(method);s
});

server.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});

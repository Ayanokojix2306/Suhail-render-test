const http = require('http');


http.createServer((req, res) => {

  res.writeHead(200, {'Content-Type': 'text/html'});

  res.end('<html><body><b><marquee>AYANOKOJI KIYOTAKA<marquee></b></body></html>');

}).listen(7860, () => {

  console.log('Server listening on port 7860');

});

var http = require('http');

var handleRequest = function(request, response) {
    console.log('Получен запрос на URL: ' + request.url);
    response.writeHead(200);
    response.end('Hello World! Here was Sevod');
};
var www = http.createServer(handleRequest);
www.listen(8080);
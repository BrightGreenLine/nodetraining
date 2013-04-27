// Generated by CoffeeScript 1.6.1
(function() {
  var http, start, url;

  http = require('http');

  url = require('url');

  start = function(port, route, handle) {
    var onrequest;
    onrequest = function(request, respond) {
      var pathname, postData, query;
      console.log("[Server] Received request for '" + request.url + "' from: " + request.connection.remoteAddress);
      pathname = url.parse(request.url).pathname;
      query = url.parse(request.url).query;
      postData = "";
      request.setEncoding("utf8");
      request.addListener("data", function(postDataChunk) {
        postData += postDataChunk;
        return console.log("Received POST data chunk '" + postDataChunk + "'.");
      });
      return request.addListener("end", function() {
        return route(handle, pathname, respond, postData);
      });
    };
    http.createServer(onrequest).listen(port);
    return console.log("Server has started");
  };

  exports.start = start;

}).call(this);
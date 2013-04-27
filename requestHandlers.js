// Generated by CoffeeScript 1.6.1
(function() {
  var fs, querystring, show, start, testing, upload;

  fs = require("fs");

  querystring = require("querystring");

  start = function(response, postData) {
    var body;
    console.log("[ReqHan] 'start' was called");
    body = '<html>' + '<head>' + '<meta http-equiv="Content-Type" content="text/html; ' + 'charset=UTF-8" />' + '</head>' + '<body>' + '<form action="/upload" method="post">' + '<textarea name="text" rows="20" cols = "60"></textarea>' + '<input type="submit" value="Submit text" />' + '</form>' + '</body>' + '</html>';
    response.writeHead(200, {
      "Content-Type": "text/html"
    });
    response.write(body);
    response.end();
    return console.log("start page requested");
  };

  upload = function(response, postData) {
    console.log("[ReqHan] 'upload' was called");
    response.writeHead(200, {
      "Content-Type": "text/plain"
    });
    response.write("Uploaded POSTDATA is '" + postData + "'");
    return response.end();
  };

  show = function(response, postData) {
    console.log("[ReqHan] 'show' was called");
    return fs.readfile("/tmp/test.png", "binary", function(error, file) {
      if (error) {
        response.writeHead(500, {
          "Content-Type": "text/plain"
        });
        response.write(err + "\n");
        return response.end();
      } else {
        response.writeHead(200, {
          "Content-Type": "text/plain"
        });
        response.write(file, "binary");
        return response.end();
      }
    });
  };

  testing = function(response, postData) {
    console.log("[ReqHan] 'Testing' was called");
    response.writeHead(200, {
      "Content-Type": "text/plain"
    });
    response.write("Testing");
    return response.end();
  };

  exports.start = start;

  exports.upload = upload;

  exports.testing = testing;

  exports.show = show;

}).call(this);

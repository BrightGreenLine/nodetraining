// Generated by CoffeeScript 1.6.1
(function() {
  var route;

  route = function(handle, pathname, response, postData) {
    console.log("[Router] Attempting to route a request for " + pathname);
    if (typeof handle[pathname] === 'function') {
      return handle[pathname](response, postData);
    } else {
      response.writeHead(404, {
        "Content-Type": "text/plain"
      });
      response.write("404 Not Found");
      return response.end();
    }
  };

  exports.route = route;

}).call(this);

// Generated by CoffeeScript 1.6.1
(function() {
  var handle, requestHandlers, router, server;

  server = require("./server");

  router = require("./router");

  requestHandlers = require("./requestHandlers");

  handle = {};

  handle["/"] = requestHandlers.start;

  handle["/start"] = requestHandlers.start;

  handle["/upload"] = requestHandlers.upload;

  handle["/testing"] = requestHandlers.testing;

  handle["/show"] = requestHandlers.show;

  server.start(8000, router.route, handle);

}).call(this);
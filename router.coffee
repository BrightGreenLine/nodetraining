route = (handle, pathname, response, postData) ->
 console.log("[Router] Attempting to route a request for " + pathname)
 if typeof handle[pathname] == 'function'
  handle[pathname](response, postData)
 else
  console.log "[Router] No request handler found for " + pathname
  response.writeHead 404, {"Content-Type": "text/plain"}
  response.write "404 Not Found"
  response.end

exports.route = route

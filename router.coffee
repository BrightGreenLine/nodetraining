#route = (handle, pathname, response) ->
route = (pathname) ->
 console.log("[Router] Attempting to route a request for " + pathname)
# if typeof handle[pathname] == 'function'
#  handle[pathname](response)
# else
#  console.log "No request handler found for " + pathname
#  response.writeHead 404, {"Content-Type": "text/plain"}
#  response.write "404 Not found_"
#  response.end

exports.route = route

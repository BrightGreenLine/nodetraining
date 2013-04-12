route = (handle, pathname) ->
 console.log("[Router] Attempting to route a request for " + pathname)
 if typeof handle[pathname] == 'function'
  handle[pathname]()
 else
  console.log "[Router] No request handler found for " + pathname

exports.route = route

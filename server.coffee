http = require 'http'
url = require 'url'

start = (port , route, handle) ->
 onrequest = (request, respond) ->
  if request.url.search "/favicon.ico"
   console.log "[Server] Received request for '" + request.url + "' from: " + request.connection.remoteAddress
   pathname = url.parse(request.url).pathname.toLowerCase()
   query = url.parse(request.url).query

   route(handle, pathname)

   respond.writeHead 200, {"Content-Type": "text/plain"}
   respond.write "Blank page, beating this up"
   respond.end()

 http.createServer(onrequest).listen(port)
 console.log "Server has started"

exports.start = start

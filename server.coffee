http = require 'http'

start = (port) ->
 onrequest = (request, respond) ->
  if request.url.search "/favicon.ico"
   console.log "Received request for '" + request.url + "' from: " + request.connection.remoteAddress
  respond.writeHead 200, {"Content-Type": "text/plain"}
  respond.write "Eat all of the dicks Daniel"
  respond.end()

 http.createServer(onrequest).listen(port)
 console.log "Server has started"

exports.start = start
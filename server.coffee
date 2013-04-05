http = require 'http'

start = (port) ->
 onrequest = (request, respond) ->
  console.log "Request Received"
  respond.writeHead 200, {"Content-Type": "text/plain"}
  respond.write "Eat all of the dicks Daniel"
  respond.end()

 http.createServer(onrequest).listen(port)
 console.log "Server has started"

exports.start = start
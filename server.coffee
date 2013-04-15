http = require 'http'
url = require 'url'

start = (port , route, handle) ->
 onRequest = (request, response) ->
  pathname = url.parse(request.url).pathname
  console.log "Request for a thing " + pathname + " received."
  
  route(pathname)

  response.writeHead 200, {"Content-Type": "text/plain"}
  response.write "Hello World"
  response.end

 http.createServer(onRequest).listen(port)
 console.log "[Server] Start"

exports.start = start

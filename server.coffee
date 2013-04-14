http = require 'http'
url = require 'url'

start = (port , route, handle) ->
 onrequest = (request, respond) ->
  # console.log "[Server] Received request for '" + request.url + "' from: " + request.connection.remoteAddress
  pathname = url.parse(request.url).pathname
  query = url.parse(request.url).query

   # route(handle, pathname, respond, postData)

  postData = ""

  request.setEncoding "utf8"

  request.addListener "data", (postDataChunk) ->
   postData += postDataChunk
   console.log "Received POST data chunk '" + 
   postDataChunk + "'."

  request.addListener "end" , ->
   # console.log "Sending POSTDATA: " + postData
   route(handle, pathname, respond, postData)

 http.createServer(onrequest).listen(port)
 console.log "Server has started"

exports.start = start

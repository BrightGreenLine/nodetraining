http = require 'http'

onRequest = (request, response) ->
 response.writeHead 200, {'Content-Type': 'text/plain'}
 response.write 'Another damn test'
 if request.url.search "/favicon.ico"
  console.log request.url
 response.end()

console.log "Here goes another thing!"

http.createServer(onRequest).listen(8000)

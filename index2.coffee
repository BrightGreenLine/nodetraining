http = require 'http'

onRequest = (request, response) ->
 response.writeHead 200, {'Content-Type': 'text/plain'}
 response.write 'Another damn test'
 console.log "Request received, makin a change"
 response.end()

console.log "Here goes another thing!"

http.createServer(onRequest).listen(8000)

http = require 'http'

server = http.createServer (req, res) ->
 res.writeHead 200, {'Content-Type': 'text/plain'}
 res.write 'God damnit Donny'
 res.end()

console.log "Starting Server!"
server.listen 8000

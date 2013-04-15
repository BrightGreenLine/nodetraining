exec = require("child_process").exec

start = (response, postData) ->
  console.log "[ReqHan] 'start' was called"
  
  response.writeHead 200, {"Content-Type": "text/plain"}
  response.write "stdout"
  response.end

upload = (response, postData) ->
  console.log "[ReqHan] 'upload' was called"
  response.writeHead 200, {"Content-Type": "text/plain"}
  response.write "Hello Upload"
  response.end

testing = (response, postData) ->
  console.log "[ReqHan] 'Testing' was called"
  response.writeHead 200, {"Content-Type": "text/plain"}
  response.write "Testing"
  response.end

exports.start = start
exports.upload = upload
exports.testing = testing

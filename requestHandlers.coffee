start = (response, postData) ->
 console.log "[ReqHan] 'start' was called"
 
 body = '<html>' +
 '<head>' + 
 '<meta http-equiv="Content-Type" content="text/html; ' +
 'charset=UTF-8" />' +
 '</head>' +
 '<body>' +
 '<form action="/upload" method="post">' +
 '<textarea name="text" rows="20" cols = "60"></textarea>' +
 '<input type="submit" value="Submit text" />' +
 '</form>' + 
 '</body>' +
 '</html>' 
 response.writeHead 200, {"Content-Type": "text/html"}
 response.write body
 response.end
 console.log "start page requested"

upload = (response, postData) ->
 console.log "[ReqHan] 'upload' was called"
 
 response.writeHead 200, {"Content-Type": "text/plain"}
 response.write "Uploaded POSTDATA is '" + postData + "'"
 response.end

testing = (response, postData) ->
 console.log "[ReqHan] 'Testing' was called"
 response.writeHead 200, {"Content-Type": "text/plain"}
 response.write "Testing"
 response.end

exports.start = start
exports.upload = upload
exports.testing = testing

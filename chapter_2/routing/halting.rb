require 'sinatra'

get '/halt' do
	"You'll never see me!"
	halt 500
end

# Now let’s use cURL to see what happens when this route is executed
# $ curl -v http://localhost:4567/halt

# RESULT

# A status code of “500 Internal Server Error” was returned, and the text we entered was
# not delivered to the client (further verified by a Content-Length header of value 0).
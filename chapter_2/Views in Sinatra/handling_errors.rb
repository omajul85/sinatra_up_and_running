require 'sinatra'

# The “/div_by_zero” has an obvious unhandled exception in the division by zero oper-
# ation. When encountered, this will result in the output of the error block being returned
# to the client.

before do
	content_type :txt
end

configure do
	set :show_exceptions, false
end

not_found do
	"Whoops! You requested a route that wasn't available."
end

get '/div_by_zero' do
	0 / 0
	"You won't see me."
end

error do
	"Y U NO WORK?"
end
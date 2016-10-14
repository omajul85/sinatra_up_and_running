require 'sinatra'

# Moved Temporarily
get '/redirect' do
	redirect 'http://www.google.com'
end

# Moved Permanently
get '/redirect2' do
	redirect 'http://www.google.com', 301
end

# $ curl -v http://localhost:4567/redirect

require 'sinatra'

# The configure block is used to register a new MIME
# type in the form of a symbol, :plain . Next, a before block sets the content type that
# will be used to render a response for the route

configure do
	mime_type :plain, 'text/plain'
end

before '/plain-text' do
	content_type :plain
end

get '/html' do
	'<h1>You should see HTML rendered.</h1>'
end

get '/plain-text' do
	'<h1>You should see plain text rendered.</h1>'
end
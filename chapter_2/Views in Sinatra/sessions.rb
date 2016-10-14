require 'sinatra'

# You can enable sessions via the configure block. Once enabled, the session object can
# be used to store and retrieve values.

configure do
	enable :sessions
end

before do
	content_type :txt
end

get '/set' do
	session[:foo] = Time.now
	"Session value set."
end

get '/fetch' do
	"Session value: #{session[:foo]}"
end

# Destroying the session
get '/logout' do
	session.clear
	redirect '/fetch'
end
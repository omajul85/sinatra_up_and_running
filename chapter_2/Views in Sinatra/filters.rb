require 'sinatra'

# Sinatra supports filters as a way to modify requests and responses, 
# both before and after a route has been executed

before do
	@before_value = "Foo"
end

before '/example' do
	@foo = "Hello World!"
	@bar = "Sinatra is great :D"
end

get '/' do
	"before_value has been set to #{@before_value}"
end

get '/example' do
	erb :example
end

after do
	puts "After filter called to perform some task."
end
require 'sinatra'

# When Sinatra parses routes, the first sufficient match is the one that will be executed!

get "/:name" do
	"Hello #{params[:name]}"
end

# Routes with Query String Parameters
get "/query/:lastname" do
	# assumes a URL in the form /some_name?foo=XYZ
	"You asked for #{params[:lastname]} as well as #{params[:foo]}"
end

# Routes with wildcards 
# Anything passed in the wildcard position is stored in params[:splat]
get '/wildcards/*' do
	"You passed in #{params[:splat]}"
end
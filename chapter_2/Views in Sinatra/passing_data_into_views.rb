require 'sinatra'

# Information constructed in the back-end of the application can be shared 
# to the front-end view through the use of instance variables '@'

get '/home' do
	@users = ['Sally', 'Jerry', 'Rocko', 'Omar']
	erb :home
end
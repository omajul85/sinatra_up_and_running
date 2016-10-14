require 'sinatra'

get '/index' do
	erb :index
end

# External templates with subfolders (2 different ways to do so)

get '/:user/profile' do
	erb "/#{params[:user]}/profile".to_sym
end

get '/:user/help' do
	erb :"/#{params[:user]}/help"
end
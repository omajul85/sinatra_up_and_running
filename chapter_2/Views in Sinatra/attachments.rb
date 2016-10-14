require 'sinatra'

before do
	content_type :txt
end

get '/attachment' do
	file = "text_to_attach.txt"
	attachment file
	"Here's what will be sent downstream, in an attachment called '#{file}'."
end
require 'sinatra'

before do
	content_type :txt
end

get '/' do
	headers "X-Custom-Value" => "This is a custom HTTP header."
	'Custom header set'
end

get '/multiple' do
	headers "X-Custom-Value" => "foo", "X-Custom-Value-2" => "bar"
	'Multiple custom headers set'
end

get '/env' do
	request.env.map { |e| e.to_s + "\n" }
end

get '/request-methods' do
	request.methods.map { |m| m.to_s + "\n" }
end
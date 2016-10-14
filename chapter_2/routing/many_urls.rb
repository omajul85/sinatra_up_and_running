require 'sinatra'

['/one/?', '/two/?', '/three/?'].each do |route|
	get route do
		str = route.gsub(/\W/, '')
		"<h1>This is route #{str}</h1>"
	end
end
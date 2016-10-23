require 'sinatra'

set :title, 'My Website'

# configure lets you specify env dependent options

# You can also use enable :key and disable :key, which
# are syntactic sugar for set :key, true and set :key, false respectively.

configure :development, :test do
  enable :admin_access
end

if settings.admin_access?
  get '/admin' do
    "Welcome to the admin area"
  end
end

get '/' do
  "<h1>#{ settings.title }</h1>"
end

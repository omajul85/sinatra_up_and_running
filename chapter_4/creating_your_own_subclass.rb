require 'sinatra/base'

class MyApp < Sinatra::Base
  get ('/'){ "Hello from MyApp!"}

  # Starting the server
  # $0 is the executed file
  # __FILE__ is the current file
  run! if __FILE__ == $0
end

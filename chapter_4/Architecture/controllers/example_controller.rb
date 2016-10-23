class ExampleController < ApplicationController
  get '/' do
    title 'Example Page'
    slim :example
  end
end

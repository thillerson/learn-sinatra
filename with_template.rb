require 'sinatra'
require 'haml'

get '/' do
  @name = 'Foo'
  erb :index
  #haml :index
end

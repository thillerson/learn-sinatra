require 'sinatra'
require 'haml'

get '/' do
  #erb :index
  haml :index
end

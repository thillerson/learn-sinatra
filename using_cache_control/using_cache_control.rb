$LOAD_PATH.unshift File.dirname(__FILE__) + "/../sinatra-cache-control/lib"

require 'rubygems'
require 'sinatra'
require 'sinatra/cache-control'

get '/' do
  cache_control :public => true, :max_age => 5
  headers["Cache-Control"]
end
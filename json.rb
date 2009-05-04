require 'sinatra'
require 'json'

get '/' do
  content_type "application/json"
  { "foo" => "bar" }.to_json
end
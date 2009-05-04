require 'sinatra'

get '/hello/:name' do
  "Hello #{params[:name]}"
end

get '/say/*/to/*' do
  params[:splat].map {|v| v + " "}
end
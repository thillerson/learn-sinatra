require 'sinatra'

helpers do
  def utf8 type
    content_type type, :charset => 'utf8'
  end
end

get '/' do
  utf8 "text/html"
  "Foo!"
end

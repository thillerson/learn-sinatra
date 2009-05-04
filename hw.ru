class BasicRack
  def call env
    body = "app sez: " + env["myrackapp.value"]
  	[200,
  		{
  			'Content-Type' => 'text/html'
  		},
  		[body]
  	]
  end
end

class MyMiddleware
  
  def initialize app
    @app = app
  end
  
  def call env
    env["myrackapp.value"] = "foobar"
    status, headers, body = @app.call env
    #example of an "after filter"
    [status, headers, body.map!{|m| m.upcase!}]
  end

end

use Rack::ContentLength
use Rack::CommonLogger
use MyMiddleware
run BasicRack.new
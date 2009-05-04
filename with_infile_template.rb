require 'sinatra'
require 'haml'

get '/' do
  erb :flindex
end

use_in_file_templates!

__END__

@@ flindex

<html>
<body>
<h1>Hello World from infile</h1>
</body>
</html>
require 'rack'

def pp(hash)
  hash.map {|key, value|
    "#{key} => #{value}"
  }.sort.join("<br />")
end

Rack::Handler::WEBrick.run ->(env){ [200, {"Content-Type"=>"text/html"}, [pp(env)]]}, :Port => 3000

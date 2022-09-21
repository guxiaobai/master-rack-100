require 'rack'

rack_app = lambda{|env| [200, {}, ["hello from lambda"]]}
# rack_app = ->(env){}
Rack::Handler::WEBrick.run rack_app, :Port => 3000

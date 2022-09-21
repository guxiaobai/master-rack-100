require 'rack'
require './decorator.rb'

rack_app = ->(env){
  response = Rack::Response.new
  response.write("hello world");
  response.finish
}
Rack::Handler::WEBrick.run Decorator.new(rack_app), :Port => 3000

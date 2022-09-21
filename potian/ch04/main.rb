require 'rack'
require '../ch03/decorator.rb'

rack_app = Rack::Builder.new{
  use Rack::ContentLength
  use Decorator
  run lambda{|env| [200, {"Content-Type"=>"text/html"}, ["hello world"]]}
}

Rack::Handler::WEBrick.run rack_app, :Port => 3000

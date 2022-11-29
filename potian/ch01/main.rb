require 'rack'

class Application
  def call(env)
    [200, {"Content-Type"=>"text/html"}, ["<h1>Hello, Rack</h1>"]]
  end
end

rack_app = Application.new
Rack::Handler::WEBrick.run rack_app, :Port => 3000

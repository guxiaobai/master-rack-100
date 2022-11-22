require 'rack'
require 'pry'


class Proxy
  attr_reader :env, :manager
  def initialize(env, manager)
    @env = env
    @manager = manager
  end


  def on_request
    manager._run_callbacks(:on_request, self)
  end

  def authenticate!
    throw(:warden)
  end
end

class Manager
  def initialize(app)
    @app = app
  end


  def call(env)
    return @app.call(env) if env['warden'] && env['warden'].manager != self
    env['warden'] = Proxy.new(env, self)

    result || = {}

    case result
    when Hash 
       process_unauthenticated(env, result)
    end
  end


  def process_unauthenticated(env, options={})
      options[:action] ||= begin
        opts = config[:scope_defaults][config.default_scope] || {}
        opts[:action] || 'unauthenticated'
      end

      proxy  = env['warden']
      result = options[:result] || proxy.result

      case result
      when :redirect
        body = proxy.message || "You are being redirected to #{proxy.headers['Location']}"
        [proxy.status, proxy.headers, [body]]
      when :custom
        proxy.custom_response
      else
        options[:message] ||= proxy.message
        call_failure_app(env, options)
      end
    end

end


class Application 
  def call(env)
    # env['warden'].authenticate!
    [200, {"Content-Type"=>"text/html"}, ["<h1>Hello, Rack</h1>"]]  
  end
end

rack_app = Application.new
Rack::Handler::WEBrick.run Manager.new(rack_app), :Port => 3000

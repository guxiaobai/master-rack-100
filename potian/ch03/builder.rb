class Builder
  def initialize(&block)
    @middlewares = []
    self.instance_eval(&block)
  end

  def use(middlewares)
    @middlewares << middleware
  end

  def run(app)
    @app = app
  end

  def to_app
    app = @app

    @middlewares.reverse.each do |middleware|
        app = middleware.new(app)
    end
    app
  end
end

Builder.new {

  use xxx
  run lambda{|env| []}
}.to_app

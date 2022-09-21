use Rack::ConditionalGet

run lambda{|env| [200, {
  "Etag"=>"guxiaobai",
  "Last-Modified" => 'Wed, 21 Sep 2022 06:43:23 GMT'
}, File.new('index.html')]}
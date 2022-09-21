# 02 Rack 初探

|本期版本|上期版本
|:---:|:---:
`Wed Sep 21 12:21:26 CST 2022` | -


## 2.1 环境

* Rack 用一个环境参数调用 Rack 应用程序，它是一个  hash 的实例
* 我们可以看到，env 包含 key 可以分为两类，一类是大写的类 CGI 的头，还有一类则 是 rack 特定的环境

## 2.2 Request

```ruby
request = Rack::Request.new(env)
```

## 2.3 Response

### 2.3.1 响应体

* 直接设置 `response.body`。此时你必须自己设置响应头 `Content-Length` 的值
* 用 `response.write` 增量写入内容，自动填充 `Content-Length` 的值
* 不管用什么方法，最后用 `response.finish` 完成
* `Content-Length` 的值必须为字符串

### 2.3.2 状态码

直接存取状态码

```ruby
response.status = 200
```

直接进行重定向

```ruby
redirect(target, status=302)
```

### 2.3.3 响应头

```
response.headers['Content-Type'] = 'text/plain'
```


## Ref

* [`Rack::Request`](https://www.rubydoc.info/github/rack/rack/Rack/Request)
* [`Rack::Response`](https://www.rubydoc.info/github/rack/rack/Rack/Response)
# 03 中间件

|本期版本| 上期版本
|:---:|:---:
`Sun Nov 20 23:44:05 CST 2022` | `Wed Sep 21 12:26:30 CST 2022`



## 3.1 一个简单的中间件

* 任何中间件本身必须是一个合法的 Rack 应用程序

## 3.2 Rack响应标准


**状态码**

* 这是一个HTTP状态，它不一定必须是整数，但是它必须能够相应 `to_i`方法并返回一个整数

**响应头**

* 这个头必须能够相应 `each` 方法，并且每次产生一个 `key` 和一个 `value`
* 对于关键字(`key` 也有明确的规定，所有的关键字必须是字符串。`value` 也必须是字符串


> 在状态码为 `1xx`、`204`、`304`的时候，必须没有下面两个key。其他任何时候都必须有这两个key.

* `Content-Type` 内容类型
* `Content-Length` 内容长度

**响应头**

* 它必须能够相应 `each` 方法,而且每次必须产生一个字符串

## 3.3 为什么中间件

* 中间件可以实现通用的逻辑和业务逻辑进行分离

### 3.4 装配中间件

* `Rack::ContentLength` 能够自动设置响应头重的 `Content-Length`


**3.4.2 实现 Builder**

`@TODO`:  用 `inject` 方法简化  `to_app` 


```ruby
@middlewares << middleware
@middlewares.reverse.inject(@app){ |app, middleware| middleware.new(app) }
```

支持中间件参数

```ruby
@middlewares  << lambda{|app| middleware_class.new(app, *options, &block)}
@middlewares.reverse.inject(@app){ |app, middleware| middleware.call(app) }
```

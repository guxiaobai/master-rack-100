# 03 中间件

|本期版本| 上期版本
|:---:|:---:
`Wed Sep 21 12:26:30 CST 2022` | -



## 3.1 一个简单的中间件

* 任何中间件本身必须是一个合法的 Rack 应用程序

## 3.2 Rack响应标准


**响应头**

> 在状态码为 `1xx`、`204`、`304`的时候，必须没有下面两个key。其他任何时候都必须有这两个key.

* `Content-Type` 内容类型
* `Content-Length` 内容长度

## 3.3 为什么中间件

* 中间件可以实现通用的逻辑和业务逻辑进行分离

### 3.4 装配中间件

* `Rack::ContentLength` 能够自动设置响应头重的 `Content-Length`


**3.4.2 实现 Builder**

`@TODO`:  用 `inject` 方法简化  `to_app` 

```ruby
@middlewares.reverse.inject(@app){ |app, middleware| middleware.new(app) }
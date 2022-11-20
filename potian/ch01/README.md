# 01 简介

|本期版本|上期版本
|:---:|:---:
`Sun Nov 20 12:36:40 CST 2022` | `Wed Sep 21 12:13:36 CST 2022`

## 1.3 一试

### 1.3.2 Handler

查询 Rack 内嵌的所有 Handler

> 2.2.3 常量 - 《Ruby 元编程》

```ruby
Rack::Handler.constants
```
所有的 Rack Handler 都有一个 run 方法, 你可以用

```ruby
Rack::Handler::WEBrick.run ...
```
### 1.3.3 一个可被 call 的对象

* 一个 Rack 应用程序是一个 Ruby 对象，只要这个对象能够响应 call

> 4.5 可调用对象 - 《Ruby 元编程》

### 1.3.4 返回一个数组

* 这个可被 call 的对象需要接受一个参数，即环境(environment)对象；需要返回一个数组


### 1.3.5 其他合法的应用程序

```ruby
	def call(env)
	 [200, {}, ["hello from AnyClass intance with call defined"]
	end
end


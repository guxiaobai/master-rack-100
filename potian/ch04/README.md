# 04 最简单的 Web 框架

|本期版本| 上期版本
|:---:|:---:
`Wed Sep 21 12:42:48 CST 2022` | -

## 4.1 Rack::Builder

* [`Rack::Builder`](https://github.com/rack/rack/blob/main/lib/rack/builder.rb)
* [`Rack::URLMap`](https://github.com/rack/rack/blob/main/lib/rack/urlmap.rb)


### 4.1.2 路由

* 一个Web程序通常用不同的代码处理不同的URL，很多Web应用程序把这种对应关 系的处理叫做路由
* 出现了一个 `map` 的话，那么不可以在相同的范围内出现  `run`


## 4.2 rackup



### 4.2.1 rackup配置文件

* 提供的最简单的 `rackup` 命令允许用一个配置文件去运行我们的应用程序
* 后缀必须为 `ru`

### 4.2.2 rackup 实现

rackup 根据不同的环境装载不同的中间件
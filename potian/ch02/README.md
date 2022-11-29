# 02 Rack 初探

|本期版本|上期版本
|:---:|:---:
`Tue Nov 29 15:43:45 CST 2022` |

## 2.1 环境

* Rack 用一个环境参数调用 Rack 应用程序，它是一个  hash 的实例
* 我们可以看到，env 包含 key 可以分为两类，一类是大写的类 CGI 的头，还有一类则 是 rack 特定的环境
ß


## Ref

* [`Rack::Request`](https://www.rubydoc.info/github/rack/rack/Rack/Request)
* [`Rack::Response`](https://www.rubydoc.info/github/rack/rack/Rack/Response)
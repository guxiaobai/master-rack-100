# 05 中间件: 第二轮

## 5.1 再议响应体

* 响应体可以响应一个 `to_path` 方法，那么这个方法应该返回一个文件的路径名

```ruby
def each(&block)
	block.call @header
	@body.each(&block)
end
```

## 5.3 HTTP 协议中间件


### 5.3.1 Rack::Chunked

> 分块传输编码的机制：在某些时候，服务端可能预先不知道将要传输的内容大小或者因为性能的原因不希望一次性生成并传输所有的响应

```
Transfer-Encoding: chunked
```

每个块包含的内容(CRLF表示回车加换行)

> 最后一个块只需要一行，它的块大小为0, 最后整个 HTTP 消息以一个CRLF结束

* 一个16进制的值表示块的大小，后跟一个 CRLF
* 数据本身后跟一个CRLF
* `Rack::Utils::HeaderHash.new({})`: 它的key对大小写不敏感，但是内部保存的key保持原来的大小写

### 5.3.2 Rack::ConditionalGet

> 告诉客户端内容未被修改

过期的秒数

```
Cache-Control: max-age=21600
```

智能URL， 服务端在生成对任何静态文件引用时增加一个标记(版本号、MD5)

```
http://127.0.0.1/jquery.js?123
```
**条件获取**

```
# Time.now.httpdate

Last-Modified:
If-Modified-Since:
```

```
Etag
If-None-Match:
```

### 5.3.3 Rack::ContentLength

### 5.3.4 Rack::ContentType

```ruby
use Rack::ContentTyoe, "text/html"
```

### 5.3.5 Rack::Deflater

* 对客户端来说，请求头中的`Accept-Encoding`代表它能够接受的编码，而响应头中的`Content-Encoding`则表示服务端对响应的内容进行了什么编码
* 多个编码，相互之间用逗号分隔
* 某个压缩编码的后面还可以包括一个分号加上一个q值

### 5.3.6 Rack:Etag

### 5.3.8 Rack::MethodOverride

* `_method`
* `X_HTTP_METHOD_OVERRIDE`

## 5.4 程序开发中间件


### 5.4.3 Rack::Reloader

## Ref

* [使用 Netcat 模拟 HTTP 请求](https://www.jianshu.com/p/dc4b966a4062)


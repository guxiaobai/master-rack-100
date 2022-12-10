# 2. Your First Controller

|本期版本| 上期版本
|:---:|:---:
`Sun Dec 11 00:44:35 CST 2022` | -

```ruby
_, cont, action, after = '/quotes/a_quote'.split('/', 4)
```

```ruby
Object.const_get
```

```ruby
$LOAD_PATH << File.join(File.dirname(__FILE__), '..', 'app', 'controllers')
require 'quotes_controller'
```
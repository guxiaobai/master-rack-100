# 2. Your First Controller

|本期版本| 上期版本
|:---:|:---:
`Mon Jul 25 11:52:26 CST 2022` | -

```ruby
_, cont, action, after = '/welcome/index/name/guxiaobai'.split('/', 4)
```

```ruby
Object.const_get
```

```ruby
$LOAD_PATH << File.join(File.dirname(__FILE__), '..', 'app', 'controllers')
```
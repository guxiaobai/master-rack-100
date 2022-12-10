# 3. Rails Automatic Loading

|本期版本| 上期版本
|:---:|:---:
`Sun Dec 11 01:18:41 CST 2022` | -

### CamelCase an snake_case

* `BadAppleController`: `bad_apple_controller`


```ruby
Object.const_missing
```

```ruby
# Rulers::WelcomeController
gsub(/::/, '/')								# Namespace::Controller -> Namespace/Controller
gsub(/([A-Z+])([A-Z][a-z])/, '\1_\2')	# BOBSays -> BOB_Says
gsub(/([a-z\d])([A-Z])/, '\1_\2')
```


### Misc

```
gem 'rulers', :path => "../rulers"
```

## In Rails

* `rails/activesupport/lib/active_support/dependencies.rb`

## Ref

* [https://github.com/guard/listen](https://github.com/guard/listen)
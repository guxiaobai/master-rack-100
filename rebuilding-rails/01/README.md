# 1. Zero to “It Works!”

|本期版本| 上期版本
|:---:|:---:
`Sun Dec 11 00:03:30 CST 2022` | -

```bash
bundle gem rulers
```


### Bundler

* `add_development_dependency`
* `add_dependency`、~~`add_runtime_dependency`~~

```ruby
spec.add_dependency 'rack', '~> 2.2'
spec.add_development_dependency "rack-test"
spec.add_development_dependency "minitest"
```

# The Littlest ORM

|本期版本| 上期版本
|:---:|:---:
`Thu Sep 22 11:53:56 CST 2022` | -


## SQLite3


```ruby
conn = SQLite3::Database.new "test.db"
conn.execute
```

```ruby
=begin
{"cid"=>0, "name"=>"id", "type"=>"integer", "notnull"=>0, "dflt_value"=>nil, "pk"=>1}
{"cid"=>1, "name"=>"posted", "type"=>"integer", "notnull"=>0, "dflt_value"=>nil, "pk"=>0}
{"cid"=>2, "name"=>"title", "type"=>"varchar(30)", "notnull"=>0, "dflt_value"=>nil, "pk"=>0}
{"cid"=>3, "name"=>"body", "type"=>"varchar(50)", "notnull"=>0, "dflt_value"=>nil, "pk"=>0}
{"id"=>"integer", "posted"=>"integer", "title"=>"varchar(30)", "body"=>"varchar(50)"}

{"id"=>"integer", "posted"=>"integer", "title"=>"varchar(30)", "body"=>"varchar(50)"}
=end

DB.table_info(table) do |row|
  @schema[row['name']] = row['type']
end
```

```ruby
=begin
[["posted", "1,"], ["title", "aaa,"], ["body", "bbb"]]
{"posted"=>"1,", "title"=>"aaa,", "body"=>"bbb"}
=end

data = Hash[keys.zip vals]
```


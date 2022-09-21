#\ -w -p 3000

map '/welcome' do 
  run lambda{|env| [200, {}, ['welcome']]}
end
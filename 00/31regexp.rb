er = /(.*?) .*/
er = %r{(.*?) .*}
er = Regexp.new "(.*?) .*"
er = /^[0-9]/
puts "123" =~ er
puts er =~ "123"
puts er =~ "abc"
puts er !~ "123"
puts er !~ "abc"
mt = /(..)\/(..)\/(....)/.match("12/05/2000")
puts mt.length
puts mt[0]
puts mt[1]
puts mt[2]
puts mt[3]
todo, dia, mes, ano = *(/(..)\/(..)\/(....)/.match("12/05/2000"))
puts todo
puts dia
puts mes
puts ano
puts "Urubatan".gsub(/ru/, "RU")
re = /.*/
puts re.methods.sort 
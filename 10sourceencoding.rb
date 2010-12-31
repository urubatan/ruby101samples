# encoding: UTF-8
arr = [1, 2, 3, 4]
arr.each_with_index do |val, idx|
  print "Posição #{idx} valor #{val}\n"
end
alias : λ :lambda
π = Math::PI

hello_world = λ { | subject| "Hello, #{subject}! π is #{ π}"}

puts hello_world["world"] # => Hello, world! π is 3.14159265358979
puts "λπ".length # => 2
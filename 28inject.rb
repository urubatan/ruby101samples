arr = [1, 2, 3, 4, 5, 6]
v   = arr.inject(0) do |val, it|
  val + it
end
puts v
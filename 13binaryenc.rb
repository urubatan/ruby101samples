f = File.open("example.txt", "rb")
puts f.external_encoding.name
puts f.read.encoding.name
f.close
f = File.open("example.txt", "r:binary")
puts f.external_encoding.name
puts f.read.encoding.name

f = File.open("example.txt")
puts f.external_encoding.name
content = f.read
puts content
puts content.encoding.name
f = File.open("example.txt", "r:ascii")
puts f.external_encoding.name
content = f.read
puts content
puts content.encoding.name

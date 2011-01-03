f = File.open("iso-8859-1.txt", "r:iso-8859-1")
puts f.external_encoding.name
content = f.read
puts content
puts content.encoding.name
#We can solve this by specifying our internal encoding when opening the file:

f = File.open("iso-8859-1.txt", "r:iso-8859-1:utf-8")
puts f.external_encoding.name
content = f.read
puts content
puts content.encoding.name

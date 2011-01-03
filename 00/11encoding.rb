# encoding: UTF-8
puts __ENCODING__.name
str = "Rüby"
puts str.encoding.name
str_in_western_iso = str.encode("iso-8859-1")
puts str_in_western_iso
puts str.bytes.to_a.inspect
puts str_in_western_iso.bytes.to_a.inspect

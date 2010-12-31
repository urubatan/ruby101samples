a = "texto"
b = 'texto'
c = "texto\nsegunda linha"
d = 'texto\nmesma linha'
e = "a = #{a} - é assim que se utiliza expansão de variáveis"
f = <<__ATE_O_FINAL
esta é 
uma String 
bem grande e só tesmina 
quando encontrar o marcador __ATE_O_FINAL 
no início de uma linha
__ATE_O_FINAL
g = %Q{Esta também 
é uma String 
com mais de uma linha 
e também suporta #{a} 
expansão de variáveis 
}
h = %q{Já 
esta 
que também é multi linha 
não suporta #{a} 
expansão de variáveis}
puts a
puts b
puts c
puts d
puts e
puts f
puts g
puts h
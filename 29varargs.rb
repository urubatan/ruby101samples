def parametros_variaveis(*arr) 
  if arr 
    arr.each do |v| 
      print "#{v.class} - #{v}\n"
    end 
  end 
end 

parametros_variaveis 

parametros_variaveis 1, "asda", :simb, :a => "teste", :arr => %w{a b c} 
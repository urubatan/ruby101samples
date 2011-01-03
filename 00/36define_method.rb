module Propriedades
  def propriedade(nome)
    ivarname = "@#{nome}".to_sym
    self.send :define_method, nome do
      self.instance_variable_get ivarname
    end
    self.send :define_method, "#{nome}=".to_sym do |val|
      self.instance_variable_set ivarname, val
    end
  end
end

class Teste
  extend Propriedades
  propriedade :nome
end
t     = Teste.new
t.nome="urubatan"
print t.inspect
print "\n" 
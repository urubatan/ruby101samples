class Teste
  def ola_mundo
    print "ola mundo\n"
  end

  def self.ola_mundo
    print "ola mundo da classe\n"
  end
end
Teste.ola_mundo
t = Teste.new
t.ola_mundo
module MixinTest
  def self.included(base)
    base.send :include, InstanceMethods
    base.send :extend, ClassMethods
  end

  module ClassMethods
    def metodo_de_classe
      print "Novo método de classe definido no módulo 'ClassMethods'\n"
    end
  end
  module InstanceMethods
    def metodo_de_instancia
      print "Novo método de instância definido no módulo 'InstanceMethods'\n"
    end
  end
end
class Teste
  include MixinTest
end
Teste.metodo_de_classe
t.metodo_de_instancia 
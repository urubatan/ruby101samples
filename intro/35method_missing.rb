class Teste
  def method_missing(method, *args)
    print "Método #{method} chamado na classe Teste, com os argumentos #{args.join(', ')}\n"
  end
end
t = Teste.new
t.imprimir
t.qualquer_coisa 1, 2, 3, "asd", :teste => 1
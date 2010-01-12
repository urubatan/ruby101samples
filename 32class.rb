class Carro 
  def initialize(fabricante,modelo,ano) 
    @fabricante = fabricante 
    @modelo = modelo 
    @ano = ano 
  end 
  attr_accessor :fabricante, :modelo, :ano 
end 
clio = Carro.new "Renault", "clio", "2000" 
puts clio.modelo 
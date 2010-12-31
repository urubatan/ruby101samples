require '32class'

class Clio < Carro
  @@fabricante = "Renault"
  @@modelo     = "clio"

  def initialize(ano)
    super(@@fabricante, @@modelo, ano)
  end
end

clio = Clio.new(2003)
puts clio.modelo
require '33inheritance'

class Fabrica
  def self.clio
    Clio.new(2003)
  end

  def self.megane
    Carro.new "Renault", "megane", 2003
  end
end
puts Fabrica.clio.inspect
puts Fabrica.megane.inspect
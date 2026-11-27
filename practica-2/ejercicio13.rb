# Ejercicio 13
# Extendé TrueClass y FalseClass con el método de instancia opposite.

module Opossite 
  def opposite
    !self
  end
end


class TrueClass
  include Opossite
end

class FalseClass
  include Opossite
end
puts false.opposite
# =>true
puts true.opposite
# =>false
puts true.opposite.opposite
# =>true
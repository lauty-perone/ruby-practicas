# Ejercicio 9
# Implementá el módulo Reverso como Mixin con:
# - di_tcejbo: imprime el object_id en orden inverso.
# - ssalc: imprime el nombre de la clase en orden inverso.

module Reverso

  def di_tcejbo
    puts object_id.to_s.reverse
  end

  def ssalc
    puts self.class.to_s.reverse
  end 
end

class Ejemplo
  include Reverso
end

ej = Ejemplo.new
ej.di_tcejbo # imprime el object_id invertido
ej.ssalc     # imprime "olpmejE"
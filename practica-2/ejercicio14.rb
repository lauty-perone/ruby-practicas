# Ejercicio 14
# Analizá la resolución de constantes y los errores de las sentencias
# indicadas en la práctica.

VALUE = 'global'

module A
  VALUE = 'A'

  class B
    VALUE = 'B'

    def self.value
      VALUE
    end

    def value
      'iB'
    end
  end

  def self.value
    VALUE
  end
end

class C
  class D
    VALUE = 'D'

    def self.value
      VALUE
    end
  end

  module E
    def self.value
      VALUE
    end
  end

  def self.value
    VALUE
  end
end

class F < C
  VALUE = 'F'
end

# Preguntas

# ¿Qué imprimen cada una de las siguientes sentencias? 
# ¿De dónde está obteniendo el valor?

puts A.value   #A del modulo A
puts A::B.value  #B de la clase B en el modulo A, los :: busca dentro del namespace algo que se llame B
puts C::D.value   #D lo mismo que arriba
puts C::E.value   #global lo mismo que arriba pero imprime el global
puts F.value   #global imprime del metodo value que extiende de C

# ¿Qué pasaría si ejecutases las siguientes sentencias? 
# ¿Por qué?

puts A::value  #A
# puts A.new.value   # no existe un new para A porque es un module
# puts B.value   # no existe la clase B, lo tiene que ir a buscar en B
puts C::D.value  #D 
puts C.value   #global
puts F.superclass.value #global busca en la superclase C e imprimie el value

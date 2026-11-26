# Ejercicio 10
# Implementá el módulo Countable con count_invocations_of, invoked? e
# invoked, y probalo en clases propias y de la biblioteca standard.

# Módulo auxiliar con métodos que pasarán a ser métodos de clase
# en la clase que incluya Countable (por ejemplo: Greeter.count_invocations_of :hi).
module ClassMethods
  # Intercepta el método de instancia `sym` para contabilizar sus llamadas.
  def count_invocations_of(sym)
    # Nombre único para guardar el método original antes de sobrescribirlo.
    original_sym = :"__countable_original_#{sym}"

    # Crea un alias apuntando a la implementación original de `sym`.
    alias_method original_sym, sym

    # Redefine `sym` como método de instancia; el bloque se ejecuta con `self` = la instancia.
    define_method(sym) do
      # Hash por instancia: inicializa en 0 si aún no existe para este objeto.
      @countable_invocations ||= Hash.new(0)

      # Suma 1 al contador de este método en esta instancia particular.
      @countable_invocations[sym.to_sym] += 1

      # Ejecuta el método original guardado en `original_sym`.
      send(original_sym)
    end
  end
end

# Mixin principal que agrega métodos de instancia (`invoked` e `invoked?`)
# y expone `count_invocations_of` a nivel de clase.
module Countable
  # Hook de Ruby: se dispara automáticamente cuando una clase hace `include Countable`.
  # `base` es la clase receptora (por ejemplo, Greeter).
  def self.included(base)
    # Agrega los métodos de `ClassMethods` como métodos de clase de `base`.
    base.extend(ClassMethods)
  end

  # Devuelve cuántas veces se invocó el método `sym` en esta instancia (0 si nunca se llamó).
  def invoked(sym)
    @countable_invocations ||= Hash.new(0)
    @countable_invocations[sym.to_sym]
  end

  # Devuelve true si el método `sym` fue invocado al menos una vez en esta instancia.
  def invoked?(sym)
    invoked(sym) > 0
  end
end
class Greeter
 include Countable

 def hi
  puts'Hey!'
 end

 def bye
  puts'See you!'
 end

 #Indico que quiero llevar la cuenta de veces que se invoca el método #hi
  count_invocations_of:hi
end
a = Greeter.new
b = Greeter.new

puts a.invoked?(:hi) # => false
puts b.invoked?(:hi) # => false
a.hi                 # => imprime "Hey!"
puts a.invoked(:hi)  # => 1
puts b.invoked(:hi)  # => 0
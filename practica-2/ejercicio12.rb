# Ejercicio 12
# Convertí GenericFactory en un módulo Mixin e incluilo en las subclases
# del ejercicio anterior.

module ClassMethods
  def create(**args)
    new(**args)
  end

end

module GenericFactory

  def self.included(base)
    base.extend(ClassMethods)
  end

  def initialize(**args)
    raise NotImplementedError
  end
end

class Persona 
  include GenericFactory
  attr_reader :nombre , :edad

  def to_s; puts nombre ; end

  def initialize(nombre:, edad:)
    @nombre = nombre
    @edad = edad
  end
end

persona = Persona.create(nombre: "Ana",edad: 25)

puts persona.to_s
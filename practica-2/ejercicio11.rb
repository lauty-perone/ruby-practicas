# Ejercicio 11
# Implementá subclases de GenericFactory que puedan instanciar objetos
# mediante el método de clase create, sin invocar new directamente.

class GenericFactory
  def self.create(**args)
    new(**args)
  end

  def initialize(**args)
    raise NotImplementedError
  end
end

class Persona < GenericFactory
  attr_reader :nombre , :edad

  def initialize(nombre:, edad:)
    @nombre = nombre
    @edad = edad
  end
end

persona = Persona.create(nombre: "Ana",edad: 25)

puts persona.nombre
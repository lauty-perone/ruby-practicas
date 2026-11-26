# Ejercicio 12
# Escribí longitud(arreglo), que retorne las longitudes de los String en la
# misma posición que ocupan en el arreglo recibido.

def longitud(arreglo)
  arreglo.map do |string|
    string.length
  end
end

puts longitud(["hola", "chau", "adiosss"]) # => [4, 4, 5]
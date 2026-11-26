# Ejercicio 9
# Implementá los siguientes métodos de String:
# - string_reverso: invierte los caracteres.
# - string_sin_espacio: elimina los espacios en blanco.
# - string_a_arreglo_ascii: convierte cada carácter a su valor ASCII.
# - string_remplaza_vocal: reemplaza vocales por números.

def string_reverso(texto)
  texto.reverse
end

def string_sin_espacio(texto)
  texto.delete(' ')
end

def string_a_arreglo_ascii(texto)
  texto.chars.map(&:ord)
end

def string_remplaza_vocal(texto)
    # gsub se encarga de reemplazar todas las coincidencias de la expresión regular 
    # con el valor que devuelve el bloque
  texto.gsub(/[aeiou]/i) { |vocal| { 'a' => '1', 'e' => '2', 'i' => '3', 'o' => '4', 'u' =>
             '5' }[vocal.downcase] }
end

puts string_reverso("Hola Mundo") # => "odnuM aloH"
puts string_sin_espacio("Hola Mundo") # => "HolaMundo"
puts string_a_arreglo_ascii("Hola") # => [72, 111, 108, 97]
puts string_remplaza_vocal("Hola Mundo") # => "H4l1 M5nd4"
# Ejercicio 2
# Implementá ordenar(*numeros), que reciba los números como 
# argumentos separados y devuelva el arreglo ordenado.

def ordenar(*numeros)
  numeros.sort
end

puts ordenar(1, 4, 6, 2, 3, 5, 0, 10, 9)
# 2 # => [0, 1, 2, 3, 4, 5, 6, 9, 10]
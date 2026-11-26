# Ejercicio 21
# Escribí multiplos_de(numeros, tope), que retorne la suma de los números
# menores al tope que sean múltiplos de todos los números del arreglo.

# def multiplos_de(numeros, tope)
#   resultado = 0
#   for i in 0..tope-1

def multiplos_de(numeros,tope)
  (1...tope).select { |i| (numeros.all?{|numero| 
    (i % numero).zero?}) }.sum
end

puts multiplos_de([3, 5], 100)
# => 315
puts multiplos_de([3, 5, 17, 28, 65], 100_000)
# => 92820
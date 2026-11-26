# Ejercicio 20
# Escribí multiplos_de_3_y_5(tope), que retorne la suma de los números
# menores al tope que sean múltiplos de 3 y de 5.

# def multiplos_de_3_y_5(tope)
#   numero = 0
#   for i in 0..tope-1
#     if (i % 3 == 0) and (i % 5 == 0) then 
#       numero = numero + i 
#     end
#   end
#   numero
# end

def multiplos_de_3_y_5(tope)
  (0...tope).select { |i| (i % 3).zero? && (i % 5).zero? }.sum
end

    

puts multiplos_de_3_y_5(100)
# => 315
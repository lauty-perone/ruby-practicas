# Ejercicio 14
# Escribí listar_mejorada(hash, pegamento = ": "), que permita cambiar el
# texto utilizado para unir cada clave con su valor.

def listar_mejorada(hash, pegamento = ": ")
    hash.each_with_index do |(clave, valor), index|
        puts "#{index + 1}. #{clave}#{pegamento}#{valor}"
    end
end

listar_mejorada({nombre: "Juan", edad: 30, ciudad: "Buenos Aires"})
# Ejercicio 13
# Escribí listar(hash), que genere una lista numerada de claves y valores
# separadas por ": " y con saltos de línea.

# each_with_index itera sobre cada par clave-valor del hash y proporciona un índice que 
# se utiliza para numerar la lista. La salida se formatea para mostrar el índice, la clave 
# y el valor en el formato deseado.

# es un for? 
# No, es un método de iteración.
#  cual es la sintaxis de each_with_index?
# La sintaxis de each_with_index es la siguiente:
# hash.each_with_index { |(clave, valor), index| }

def listar(hash)
    hash.each_with_index do |(clave, valor), index|
        puts "#{index + 1}. #{clave}: #{valor}"
    end
end

listar({nombre: "Juan", edad: 30, ciudad: "Buenos Aires"})

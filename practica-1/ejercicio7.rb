# Ejercicio 7
# Escribí contar(texto, buscado), que cuente las apariciones de un String
# dentro de otro sin distinguir mayúsculas de minúsculas.

def contar(texto, buscado)
    #Paso a minuscula
    texto = texto.downcase
    buscado = buscado.downcase

    #Divido el texto en caracteres y lo recorro
    contador = 0
    texto.chars.each_with_index do |caracter, index|
        #Si el caracter es igual al buscado, verifico si los siguientes caracteres son iguales al buscado
        if caracter == buscado[0]
            if texto[index, buscado.length] == buscado
                contador += 1
            end
        end
    end
    puts contador
end



contar("La casa de la esquina tiene la puerta roja y lalalala ventana blanca.", "la")
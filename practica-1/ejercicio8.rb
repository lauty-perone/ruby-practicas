# Ejercicio 8
# Modificá el ejercicio anterior para que contar_palabras solo considere
# apariciones que sean palabras completas.

def contar_palabras(texto, buscado)

    #la i ignora mayusculas y minusculas 
    #length devuelve la cantidad de coincidencias
    # scan devuelve un array con todas las coincidencias de la expresion regular en el texto
    puts texto.scan(/\b#{Regexp.escape(buscado)}\b/i).length
end



contar_palabras("La casa de lalalala esquina tiene la puerta roja y la ventana blanca.", "la")
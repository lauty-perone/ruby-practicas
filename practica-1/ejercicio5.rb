# Ejercicio 5
# Escribí una función llamada reemplazar que reciba un String y reemplace
# "{" por "do\n" y "}" por "\nend".
#
# def reemplazar(texto)
#   # Resolvé acá.
# end

#gsub reemplaza todas las ocurrencias.

def reemplazar(texto)
    texto.gsub("{", "do\n").gsub("}", "\nend")
end
    
reemplazar("3.times { |i| puts i }")
# => "3.times do\n |i| puts i \nend"
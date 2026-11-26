# Ejercicio 4
# Implementá longitud(*parametros), que imprima la representación to_s
# de cada parámetro y la cantidad de caracteres que tiene.

def longitud(*parametros)
  parametros.each {|p| puts p.to_s.length}
end

longitud(9, Time.now, 'Hola', {un: 'hash'}, :ruby)

# Debe imprimir:
 # "9"--> 1
 # "2025-09-14 13:22:10 +0000"--> 25
 # "Hola"--> 4
 # {:un=>"hash"}--> 13
 # ruby--> 4
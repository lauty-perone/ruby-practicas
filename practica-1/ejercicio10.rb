# Ejercicio 10
# ¿Cuál es el valor de retorno de?
#
[:upcase, :downcase, :capitalize, :swapcase].map do |meth|
  puts "TTPS Ruby".send(meth)
end

# Cada iteración del bloque imprime el resultado de aplicar el método correspondiente a 
# la cadena "TTPS Ruby". Los métodos son:
# - :upcase: convierte todos los caracteres a mayúsculas.
# - :downcase: convierte todos los caracteres a minúsculas.
# - :capitalize: convierte el primer carácter a mayúscula y el resto a minúsculas.
# - :swapcase: intercambia las mayúsculas por minúsculas y viceversa.

# TTPS RUBY
# ttps ruby
# Ttps ruby
# ttps rUBY



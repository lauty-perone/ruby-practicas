# Ejercicio 17
# Escribí un script que reciba el nombre como argumento de ejecución y
# muestre "Hola, <nombre>".

nombre = ARGV[0]

if nombre && !nombre.empty?
  puts "Hola, #{nombre}"
else
  puts "Por favor, ingresá un nombre como argumento. Ejemplo: ruby script.rb Pepe"
end
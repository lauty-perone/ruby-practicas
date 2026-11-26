# Ejercicio 15
# Escribí una función que indique si una cadena contiene todas las vocales,
# sin distinguir mayúsculas de minúsculas.

def contiene_todas_las_vocales(cadena)
  # Convertimos la cadena a minúsculas para no distinguir entre mayúsculas y minúsculas
  cadena = cadena.downcase.tr("áéíóúÁÉÍÓÚ", "aeiouAEIOU")
  
  # Definimos un conjunto de vocales
  vocales = ['a', 'e', 'i', 'o', 'u']
  
  # Verificamos si todas las vocales están presentes en la cadena
  vocales.all? { |vocal| cadena.include?(vocal) }
end

puts contiene_todas_las_vocales("Murcielago") # => true
puts contiene_todas_las_vocales("Hola Mundo") # => false
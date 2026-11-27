# Ejercicio 15
# Implementá da_nil?, que ejecute el bloque recibido y retorne true si
# su valor de retorno fue nil.

def da_nil?
  return nil unless block_given?
  puts yield.nil?
end

da_nil? { } # => true
da_nil? do 
  'Algo distinto de nil' 
end # => false
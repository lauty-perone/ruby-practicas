# Ejercicio 17
# Implementá un método variable que capture y clasifique RuntimeError,
# NoMethodError y cualquier otra excepción producida por el bloque.
def ejecutar_seguro(*args)
  yield(*args)
  :ok
rescue RuntimeError
  puts "Hay algo mal que no anda bien"; :rt
rescue NoMethodError => e
  puts "Y este método? #{e.message}"
  :nm
rescue => e
  puts "Y ahora?" 
  raise
end

# 1. Caso exitoso -> imprime 15 y retorna :ok
puts "Resultado 1: #{ejecutar_seguro(10, 5) { |a, b| puts a + b }}"

# 2. Caso RuntimeError -> imprime mensaje y retorna :rt
puts "Resultado 2: #{ejecutar_seguro("dato") { |x| raise "falló #{x}" }}"

# 3. Caso NoMethodError -> imprime "Y este método?" + mensaje original y retorna :nm
puts "Resultado 3: #{ejecutar_seguro("hola") { |s| s.metodo_inexistente }}"

# 4. Cualquier otra excepción (ej. ZeroDivisionError) -> imprime "Y ahora?" y relanza
begin
  ejecutar_seguro(10, 0) { |a, b| a / b }
rescue ZeroDivisionError => e
  puts "Excepción relanzada atrapada afuera: #{e.class} - #{e.message}"
end
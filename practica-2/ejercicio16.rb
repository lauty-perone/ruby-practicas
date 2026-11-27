# Ejercicio 16
# Implementá procesar_hash(hash, proc), que invierta claves y valores
# aplicando el Proc a las claves originales.

def procesar_hash(hash, proc)
  nuevo = {}
  hash.each do |k, v|
    nuevo[v] = proc.call(k)
  end
  nuevo
end

hash = { 'clave' => 1, :otra_clave => 'valor' }
puts procesar_hash(hash,->(x) { x.to_s.upcase })
# => { 1 => 'CLAVE', 'valor' => 'OTRA_CLAVE' }
# Ejercicio 1

# Symbol
# Los símbolos son identificadores livianos e inmutables que se suelen usar como nombres de claves o etiquetas.

# Mediante literales:
# Se utiliza el operador : antes del nombre, o comillas si contienen espacios o caracteres especiales.

irb(main):001:0> sym1 = :mi_simbolo
=> :mi_simbolo

irb(main):002:0> sym2 = :"simbolo con espacios"
=> :"simbolo con espacios"

# Mediante el constructor new:No es posible. La clase Symbol no tiene un método .new. Si intentas ejecutarlo, 
# Ruby lanzará un error (NoMethodError), ya que los símbolos no se instancian de manera tradicional; 
# se generan y se almacenan automáticamente en una tabla interna de Ruby.

irb(main):003:0> Symbol.new("test")
(irb):3: undefined method 'new' for Symbol:Class (NoMethodError)

# String (Cadena de texto)
# Representan secuencias de caracteres y son objetos mutables por defecto en Ruby.

# Mediante literales:
# Se pueden crear usando comillas dobles (permite interpolación y secuencias de escape) o comillas simples.

irb(main):001:0> str1 = "Hola mundo"
=> "Hola mundo"

irb(main):002:0> str2 = 'Hola con comillas simples'
=> "Hola con comillas simples"

# Mediante el constructor new:
# Sí es posible utilizando String.new. Esto crea un nuevo objeto String 
# (útil cuando necesitas asegurar una instancia completamente nueva y separada).

irb(main):003:0> str3 = String.new("Texto con new")
=> "Texto con new"

irb(main):004:0> str_vacio = String.new
=> ""

# Array (Arreglo)
# Estructuras de datos ordenadas y indexadas que pueden contener elementos de cualquier tipo.

# Mediante literales:
# Se definen utilizando corchetes [] o mediante literales de palabras %w / %W.

irb(main):001:0> arr1 = [1, 2, 3, "cuatro"]
=> [1, 2, 3, "cuatro"]

irb(main):002:0> arr_palabras = %w[ruby python javascript]
=> ["ruby", "python", "javascript"]

# Mediante el constructor new:Array.new es sumamente versátil, ya que permite inicializar tamaños y valores por defecto.

irb(main):003:0> arr_vacio = Array.new
=> []

irb(main):004:0> arr_con_tamanio = Array.new(3)
=> [nil, nil, nil]

irb(main):005:0> arr_con_defecto = Array.new(3, "x")
=> ["x", "x", "x"]

# Con un bloque para inicializar cada elemento dinámicamente:
irb(main):006:0> arr_bloque = Array.new(3) { |i| i * 2 }
=> [0, 2, 4]

# Hash (Diccionario / Tabla asociativa)
# Estructuras que almacenan pares de clave => valor.

# Mediante literales:
# Se definen utilizando llaves {}. Se pueden usar la sintaxis tradicional con flechas (=>) o
#  la sintaxis moderna con símbolos al final de la clave (clave:).


irb(main):001:0> hash1 = { "nombre" => "Lautaro", "edad" => 24 }
=> {"nombre"=>"Lautaro", "edad"=>24}

irb(main):002:0> hash2 = { lenguaje: "Ruby", nivel: "Intermedio" }
=> {:lenguaje=>"Ruby", :nivel=>"Intermedio"}

# Mediante el constructor new:
# Se puede usar Hash.new. Su principal ventaja es que permite definir un valor 
# por defecto que se retornará cuando se intente acceder a una clave que no existe.


irb(main):003:0> hash_vacio = Hash.new
=> {}

# Hash con valor por defecto de 0 para claves inexistentes
irb(main):004:0> contador = Hash.new(0)
=> {}

irb(main):005:0> contador[:manzanas] += 1
=> 1

irb(main):006:0> contador[:manzanas]
=> 1

# Al consultar una clave que no existe, devuelve el valor por defecto configurado (0) en lugar de nil
irb(main):007:0> contador[:peras]
=> 0º

# Ejercicio 2
# 2. ¿De qué forma(s) se puede convertir un objeto(cualquiera fuere su tipo o clase) en String?



# Ejercicio 19
# Investigá los métodos de Ruby para:
# - Obtener ancestros y métodos de una clase.
# - Obtener métodos de instancia y variables de instancia.
# - Leer y escribir una variable de instancia desde fuera del objeto.

# Obtener la lista de ancestros de una clase
# Clase.ancestors: devuelve un Array con la clase misma, los módulos incluidos (include / prepend) y 
# toda la cadena de superclases hasta BasicObject.
# Clase.superclass: devuelve únicamente la superclase directa (o nil si es BasicObject).

String.ancestors # => [String, Comparable, Object, Kernel, BasicObject]
String.superclass # => Object

# 2. Conocer la lista de métodos de una clase
# Clase.methods: devuelve todos los métodos de clase/singleton disponibles en Clase (incluyendo heredados de Class, Module y Object).

# Clase.singleton_methods: devuelve solo los métodos propios de clase/singleton definidos directamente en Clase (sin heredar los de Object/Class).

Array.singleton_methods # => [:try_convert]

# 3. Conocer la lista de métodos de instancia de una clase
# Clase.instance_methods(include_super = true): devuelve los métodos de instancia públicos y protegidos. Pasando false (instance_methods(false)) 
# limitás la búsqueda solo a los definidos en esa clase.

# Clase.private_instance_methods(include_super = false) y Clase.protected_instance_methods(include_super = false): listan métodos de instancia privados o protegidos.

String.instance_methods(false) # => métodos propios de instancia de String

# 4. Conocer las variables de instancia de una clase
# En Ruby las variables de instancia pertenecen a cada objeto, no a la definición estática de la clase (se crean al asignarse en tiempo de ejecución). Para consultarlas:

# En una instancia: objeto.instance_variables devuelve un Array con sus nombres como símbolos (por ejemplo, [:@nombre]).

# En una clase: Clase.instance_variables devuelve las variables de instancia de la propia clase (es decir, de su objeto Class, como @subclasses o las definidas en el cuerpo de la clase).

persona.instance_variables # => [:@nombre, :@edad]

# 5. Obtener el valor de una variable de instancia desde fuera
# objeto.instance_variable_get(:@variable) (o "@variable"): lee el valor actual de la variable de instancia sin necesidad de attr_reader.

persona.instance_variable_get(:@nombre) # => "Ana"

# 6. Establecer el valor de una variable de instancia desde fuera
# objeto.instance_variable_set(:@variable, valor) (o "@variable"): asigna o crea la variable de instancia con valor sin necesidad de attr_writer.

persona.instance_variable_set(:@nombre, "Luis") # => "Luis"
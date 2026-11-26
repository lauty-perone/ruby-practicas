# Ejercicio 7
# Modificá los usuarios para implementar to_s con el identificador y el
# nombre del rol.

class Documento 
  attr_accessor :creador, :contenido, :publico, :borrado

  def initialize(usuario, publico = true, contenido = '')
    self.creador = usuario
    self.publico = publico
    self.contenido = contenido
    self.borrado = false
  end

  def borrar
    self.borrado = true
  end
  
  def puede_ser_visto_por?(usuario)
    usuario.puede_ver? self
  end
  
  def puede_ser_modificado_por?(usuario)
    usuario.puede_modificar? self
  end
  
  def puede_ser_borrado_por?(usuario)
    usuario.puede_borrar? self
  end
end

class Usuario
  attr_accessor :usuario, :clave, :email, :rol

  def initialize(usuario, clave, email, rol)
    self.usuario = usuario
    self.clave = clave
    self.email = email
    self.rol = rol
  end

  def to_s
    "#{email} (#{rol})"
  end

  def puede_borrar?(documento) false end
  def puede_ver?(documento) false end
  def puede_modificar?(documento) false end
end

class Lector < Usuario

  def puede_ver?(documento)
    !documento.borrado && documento.publico
  end
end

class Redactor < Lector
  def puede_modificar?(documento)
    !documento.borrado && documento.creador == self
  end
end

class Director < Redactor
  def puede_ver?(documento)
    !documento.borrado
  end

  def puede_modificar?(documento)
   !documento.borrado
  end
end


class Administrador < Director
  def puede_borrar?(documento)
    !documento.borrado
  end
end

# --- Script de prueba ---
lector = Lector.new("ana", "1234", "ana@ejemplo.com", "Lector")
redactor = Redactor.new("juan", "1234", "juan@ejemplo.com", "Redactor")
otro_redactor = Redactor.new("sofia", "1234", "sofia@ejemplo.com", "Redactor")
director = Director.new("luis", "1234", "luis@ejemplo.com", "Director")
admin = Administrador.new("admin", "1234", "admin@ejemplo.com", "Admin")

doc_publico = Documento.new(redactor, true, "Contenido público")
doc_privado = Documento.new(redactor, false, "Contenido privado")
doc_borrado = Documento.new(otro_redactor, true, "Contenido a borrar")
doc_borrado.borrar

usuarios = [lector, redactor, otro_redactor, director, admin]
documentos = {
  "público" => doc_publico,
  "privado" => doc_privado,
  "borrado" => doc_borrado
}

# documentos.each do |nombre_doc, doc|
#   puts "\n=== Documento #{nombre_doc} (creador: #{doc.creador.usuario}, borrado: #{doc.borrado}) ==="
#   usuarios.each do |u|
#     puts "#{u.class} (#{u.usuario}) -> " \
#          "ver: #{doc.puede_ser_visto_por?(u)}, " \
#          "modificar: #{doc.puede_ser_modificado_por?(u)}, " \
#          "borrar: #{doc.puede_ser_borrado_por?(u)}"
#   end
# end

# --- Script de prueba Ejercicio 7 ---
puts "\n=== Prueba de #to_s ==="
usuarios.each do |u|
  puts "Directo: #{u.to_s}"
  puts "Interpolado: #{u}"
end

puts "\n=== Verificación de formato ==="
puts lector.to_s # => "ana (Lector)" (o con email según el identificador que elijas)
puts admin.to_s  # => "admin (Administrador)"

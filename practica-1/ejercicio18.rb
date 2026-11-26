# Ejercicio 18
# Implementá notacion_hexadecimal(rgb) y notacion_entera(rgb) para
# convertir un arreglo RGB a hexadecimal y a su representación entera.

def validar_numero(numero)
  unless numero.is_a?(Integer) and numero.between?(0, 255)
    raise ArgumentError, "El valor debe ser un número entero"
  end
end


def notacion_hexadecimal(rgb)
  resultado ="#"
  rgb.each_with_index do |color , index|
    validar_numero(color) 
    resultado  += color.to_s(16).upcase.rjust(2, "0")
  end
  puts resultado
end

def notacion_entera(rgb)
  resultado =0
   rgb.each_with_index do |color , index|
    validar_numero(color) 
    if index == 0 ? resultado = resultado + color :
      index == 1 ? resultado = resultado + color * 256 : 
      resultado = resultado + (color * 256 ** 2) 
    end
  end
  puts resultado
end

notacion_hexadecimal([0, 128, 255])
# 2 # => '#0080FF'
notacion_entera([0, 128, 255])
# 4 # => 16744448
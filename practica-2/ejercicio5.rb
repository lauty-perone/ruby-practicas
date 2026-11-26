# Ejercicio 5
# Implementá cuanto_falta?(momento = nil). Si no se recibe un Time,
# calcule los minutos hasta la medianoche de hoy.

def cuanto_falta?(momento = nil)
  # if momento == nil then  momento = Time.now end
  ahora = Time.now
  medianoche = Time.new(ahora.year, ahora.month, ahora.day, 23, 59, 59)
  
  if momento != nil
    resultado = (momento - ahora) / 60
  else
    resultado = (medianoche - ahora) / 60
  end
  resultado
    
end

puts cuanto_falta? Time.new(2032, 12, 31, 23, 59, 59)
# => Retorna la cantidad de minutos que faltan para las 23:59:59
# del 31/12/2032
puts cuanto_falta?
# => Retorna la cantidad de minutos que faltan para la medianoche
# de hoy
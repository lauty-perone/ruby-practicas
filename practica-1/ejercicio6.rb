# Ejercicio 6
# Escribí la función tiempo_en_palabras que reciba un objeto Time y exprese
# la hora en palabras según los rangos de minutos indicados en la práctica.

# hora = tiempo.hour
#minutos = tiempo.min

def tiempo_en_palabras(tiempo)
  hora = tiempo.hour
  hora = case tiempo.min
            when (35..44) then tiempo.hour
            when (45.59) then tiempo.hour + 1
          end 


  prefijo = case tiempo.min
            when (0..55) then  tiempo.hour == 1 ? "Es la" : "Son las"
            when (56.59) then (tiempo.hour + 1) % 24 == 1 ? "Casi es la" : "Casi son las"
          end

  sufijo = case tiempo.min  
           when (0..10) then "en punto."
           when (11..20) then "y cuarto."
           when (21..34) then "y media."
           when (35..44) then "menos veinticinco."
           when (45..55) then "menos cuarto."
          end

  puts ("#{prefijo} #{hora} #{sufijo}")          
end

tiempo_en_palabras(Time.new(2025, 10, 21, 10, 1))
# => "Son las 10 en punto"
tiempo_en_palabras(Time.new(2025, 10, 21, 9, 33))
# => "Son las 9 y media"

tiempo_en_palabras(Time.new(2025, 10, 21, 8, 45))
# => "Son las 9 menos cuarto"
tiempo_en_palabras(Time.new(2025, 10, 21, 6, 58))
# => "Casi son las 7"
tiempo_en_palabras(Time.new(2025, 10, 21, 0, 58))
 # => "Casi es las 1"
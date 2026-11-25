# Ejercicio 4
# ¿Qué devuelve la siguiente comparación? ¿Por qué?
# 'TTPS Ruby'.object_id == 'TTPS Ruby'.object_id

Devuelve false
Porque dos literales String iguales no son el mismo objeto: cada literal crea 
una instancia nueva — a diferencia de los símbolos, que sí son 
únicos.
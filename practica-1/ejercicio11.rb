# Ejercicio 11
# Explicá situaciones de uso de send y public_send y su diferencia principal.

# send y public_send son métodos en Ruby que permiten invocar métodos de un 
# objeto de manera dinámica, 
# es decir, pasando el nombre del método como un símbolo o cadena. 
# La diferencia principal entre ambos radica en el acceso a los
#  métodos privados y protegidos.
# send permite invocar cualquier método, incluyendo los métodos privados y protegidos, 
# mientras que public send solo permite invocar métodos públicos.  
# Ejercicio 18
# Explicá qué son los lazy enumerators y sus ventajas para conjuntos
# grandes de datos.

#Un enumerador no-lazy como map o select procesa y 
# materializa toda la colección de inmediato, aunque solo 
# necesites unos pocos resultados.

# .lazy encadena las mismas operaciones sin ejecutarlas 
# todavía: arma una “receta” que recién se evalúa cuando 
# pedís algo concreto (first, take, force)

#Es imprescindible para secuencias infinitas o muy grandes, 
# evitando calcular de más.
# Ejercicio 5: Iteración en múltiples arrays
# Dado los siguientes arreglos
#
# a = [1,2,3]
# b = [:azul, :rojo, :amarillo]
# c = ["Tacos", "Quesadillas", "Hamburguesas"]
#
# Se pide iterar sobre los arreglos para mostrar la información de la siguiente
# forma:
# 1 :azul, Tacos
# 2 :rojo, Quesadillas
# 3 :amarillo, Hamburguesas
# Se pide iterar sobre los arreglos para mostrar la información de la siguiente
# forma:
# 1 :amarillo, Tacos
# 2 :rojo, Quesadillas
# 3 :azul, Hamburguesas
# Iterando los arreglos anteriores crear un único arreglo final con:
# [1, :azul, Tacos, 2, :rojo, Quesadillas, 3,:amarillo, "Hamburguesas"]

a = [1,2,3]
b = [:azul, :rojo, :amarillo]
c = ["Tacos", "Quesadillas", "Hamburguesas"]

puts
print a.zip(b, c)
puts puts
print a.zip(b.reverse, c)
puts puts
print a.zip(b, c).flatten
puts puts

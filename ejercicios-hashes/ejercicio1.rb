# Ejercicio 1: Introducción a Hashes
# Dado el hash = {"x": 1, "y":2}
# Agregar el texto z con el valor 3
# Cambiar el valor de x por 5
# Eliminar la clave y
# Si el hash tiene una clave llamada z mostrar en pantalla "yeeah"
# Invertir el diccionario de forma que los valores sean las llaves y las llaves
# los valores
# ejemplo: x = {"a":"hola" } se transforme en {"hola": "a"}

hash = {"x": 1, "y":2}
puts
# Agregar el texto z con el valor 3

hash[:z] = 3
puts hash
puts

# Cambiar el valor de x por 5
hash[:x] = 5
puts hash
puts

# Eliminar la clave y

hash.delete(:y)
puts hash
puts

# Si el hash tiene una clave llamada z mostrar en pantalla "yeeah"
puts "yeeah" if hash.each {|e| e == :z}
puts

# Invertir el diccionario de forma que los valores sean las llaves y las
# llaves los valores
puts hash.invert
puts

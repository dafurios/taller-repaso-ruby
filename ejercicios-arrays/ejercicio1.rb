# Ejercicio 1: Array Básicos
# Dado el array [1,2,3,9,1,4,5,2,3,6,6]
# 1. Mostrar en pantalla el primer elemento.
# 2. Mostrar en pantalla el último elemento.
# 3. Mostrar en pantalla todos los elementos.
# 4. Mostrar en pantalla todos los elementos junto con un índice.
# 5. Mostrar en pantalla todos los elementos que se encuentren en una posición
# par.
# 6. Determinar con el método aprendido en clases si un elemento ingresando
#  pertenece al array o no, mostrar el resultado en pantalla

a = [1, 2, 3, 9, 1, 4, 5, 2, 3, 6, 6]
# 1. Mostrar en pantalla el primer elemento.
puts a[0]

# 2. Mostrar en pantalla el último elemento.
puts a[-1]

# 3. Mostrar en pantalla todos los elementos.
print a
puts puts

# 4. Mostrar en pantalla todos los elementos junto con un índice.
 a.each_with_index do |valor, indice|
   puts "indice #{indice} y #{valor}"
 end
 puts

# 5. Mostrar en pantalla todos los elementos que se encuentren en una posición
# par.
 a.each_with_index do |valor, indice|
   print "#{valor} " if indice.even?
 end
 puts puts

 # 6. Determinar con el método aprendido en clases si un elemento ingresando
 # pertenece al array o no, mostrar el resultado en pantalla

 puts a.include?(10)
 puts a.include?(6)
 puts a.include?(7)

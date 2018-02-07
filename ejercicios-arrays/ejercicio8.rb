# Pregunta 8
# Se tiene un ejercicio con una cantidad par de elementos en un arreglo,
# se pide agruparlos de a dos.
# Ejemplo: [1,2,3,4,5,6,7,8] Resultado: [[1,2],[3,4],[5,6],[7,8]]
# Hint: each_slice

a = [1, 2, 3, 4, 5, 6, 7, 8]
puts

# a.each_slice(2) do |e|
#   print e
# end
# print

b = []
a.each_slice(2) { |e| b.push(e) }
print b
puts puts 

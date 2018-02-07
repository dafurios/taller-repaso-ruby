# Ejercicio 6: Manipulación de múltiples arrays
# Se tienen dos arreglos
# El primero es del tipo [1,2,3,0,1,2,2,1,2,1,2,0,3] y el segundo es del tipo
# [:azul, :verde, :amarillo]
# Se pide cambiar todas las apariciones del número que aparece en el arreglo 1
# por el elemento con el mismo índice del arreglo 2, en caso de no existir el
# elemento deberá ser remplazado por nil.
# El resultado de este ejercicio debería quedar:
# [:verde, :amarillo, nil, :azul, :verde, :amarillo ....]
# 1 : verde[1]
# 2 : amarillo[2]
# 3 : nil
# 0 : azul[0]

a =  [1, 2, 3, 0, 1, 2, 2, 1, 2, 1, 2, 0, 3]
b =  [:azul, :verde, :amarillo]

puts
c = []
a.map do |i|
  c << (nil) if i == 3
  c.push(b[0]) if i == 0
  c << (b[1]) if i == 1
  c.push(b[2]) if i == 2
end
print c
puts puts

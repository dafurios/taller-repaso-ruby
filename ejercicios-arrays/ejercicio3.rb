# Ejercicio 3: Array, operaciones numéricas y métodos.
# Dado un array como el siguiente [1,2,3,9,1,4,5,2,3,6,6] :
# 1. Crear un método para eliminar todos los números pares del arreglo.
# 2. Crear un método para obtener la suma de todos los elementos del arreglo
# Utilizando .each
# 3. Crear un método para obtener el promedio de un arreglo.
# 4. Crear un método que incrementa todos los elementos en una unidad y devuelva
#  un arreglo nuevo.
puts
a = [1, 2, 3, 9, 1, 4, 5, 2, 3, 6, 6]
print a
puts
puts
# 1. Crear un método para eliminar todos los números pares del arreglo.

def eliminar(aaa)
  aaa.each do |elemento|
    puts aaa.delete(elemento) if elemento.even?
  end
end
print eliminar(a)
puts
puts


# 2. Crear un método para obtener la suma de todos los elementos del arreglo
# Utilizando .each

def suma(aaa)
  sum = 0
  aaa.each do |elemento|
    sum += elemento
  end
  sum
end
puts suma(a)
puts

# 3. Crear un método para obtener el promedio de un arreglo.

def promedio(aaa)
  sum = 0
  aaa.each do |elemento|
    sum += elemento
  end
  (sum/aaa.length.to_f).round(3)
end
puts promedio(a)
puts


# 4. Crear un método que incrementa todos los elementos en una unidad y
# devuelva un arreglo nuevo.

def incremento(aaa)
  b = aaa.map do |elemento|
    elemento + 1
  end
end
print incremento(a)
puts
puts 

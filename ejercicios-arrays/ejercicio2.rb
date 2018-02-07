# Ejercicio 2: Operaciones de push y pop en arrays
# Dado el array [1,2,3,9,1,4,5,2,3,6,6]
# 1. Eliminar el último elemento.
# 2. Eliminar el primer elemento.
# 3. Eliminar el elemento que se encuentra en la posición media, si el arreglo
# tiene un número par de elementos entonces remover el que se encuentre en la
# mitad izquierda, ejemplo, en el arreglo [1,2,3,4] se removería el elemento 2.
# 4. Borrar el último elemento mientras ese número sea distinto a 1.
# 5. Utilizando un arreglo vacío auxiliar y operaciones de push and pop invertir
# el orden de los elementos en un arreglo

a = [1, 2, 3, 9, 1, 4, 5, 2, 3, 6, 6]

# 1. Eliminar el último elemento.

print a
puts
puts a.delete_at(-1)
print  a

# 2. Eliminar el primer elemento.
puts
puts a.delete_at(0)
print  a

# 3. Eliminar el elemento que se encuentra en la posición media, si el arreglo
# tiene un número par de elementos entonces remover el que se encuentre en la
# mitad izquierda, ejemplo, en el arreglo [1,2,3,4] se removería el elemento 2

puts
puts a.delete_at(a.length / 2)
print a
puts
puts a.delete_at(a.length / 2 - 1)
print a
puts

# 4. Borrar el último elemento mientras ese número sea distinto a 1.

puts a.delete_at(-1) if a[-1] != 1
print a
puts

# 5. Utilizando un arreglo vacío auxiliar y operaciones de push and pop
# invertir el orden de los elementos en un arreglo.

b = []

a.length.times do
  b.push(a.pop)
end

print b

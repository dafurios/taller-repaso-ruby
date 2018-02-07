# Dado un arreglo con nombres como el siguiente
# ["Violeta", "Andino", "Clemente", "Javiera", "Paula", "Pia", "Ray"].
# 1. Extraer todos los elementos que excedan mas de 5 caracteres.
# 2. Crear un arreglo nuevo con todos los elementos en minúscula
# 3. Crear un método que devuelva un arreglo con la cantidad de caracteres que
#  tiene cada nombre.

puts
a = ["Violeta", "Andino", "Clemente", "Javiera", "Paula", "Pia", "Ray"]
print a
puts
puts

# 1. Extraer todos los elementos que excedan mas de 5 caracteres.

 a.each do |nombre|
    puts nombre if nombre.length > 5
end
puts

# 2. Crear un arreglo nuevo con todos los elementos en minúscula

b = a.map { |nombre| nombre.downcase  }
print b
puts puts


# 3. Crear un método que devuelva un arreglo con la cantidad de caracteres que
# tiene cada nombre.


def caracteres(aaa)
  aaa.map do |nombre|
      nombre.length
    end
end
print caracteres(a)
puts puts

# Ejercicio 4: Array y Hashes
# Se tienen dos arrays uno con el nombre de personas y otro con las edades,
#  se pide generar un hash con el nombre y edad de cada persona (se asume que
#    no existen dos personas con el mismo nombre)
# personas = ["Carolina", "Alejandro", "Maria Jesús", "Valentín"]
# edad = [32, 28, 41, 19]
# Se pide generar un hash con la información
# personas_hash = {"Carolina": 32, "Alejandro":28,
# "María Jesús":41, "Valentín":19}
# Crear un método que reciba el hash y devuelva la edad del hash pasado
#  como argumento.


personas = ["Carolina", "Alejandro", "Maria Jesús", "Valentín"]
edad = [32, 28, 41, 19]

# Se pide generar un hash con la información
puts
a = personas.zip(edad).to_h
puts a
puts puts

# Crear un método que reciba el hash y devuelva la edad del hash pasado
# como argumento.

def hash(aaa)
  edades = aaa.inject(0) do |sum, (nombre, edad)|
    sum + edad
  end

end
puts hash(a)
puts

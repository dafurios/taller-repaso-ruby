## Ejercicio 5: Array de hashes
# Crear un arreglo de hashes, cada hash contiene un array con datos de persona,
#  estos datos son:
# Nombre
# País
# Continente
# Género
# 1. Crear el array de hashes y pobarlo con al menos 8 personas:
# 2. Contar la cantidad de personas de la lista.
# 3. Generar un array con cada continente, eliminar repeticiones, considerar
#  que pueden haber nombres
# escritos con mayúscula y minúscula.
# 4. Generar una lista con todas las personas llamadas pedro
# 5. Hacer dos listas de personas, una por cada género6. Armar un hash, donde
#  cada clave sea un continente
# y el value un array con los países de cada continente.

# 1. Crear el array de hashes y pobarlo con al menos 8 personas:
puts

arreglo_hashes = []

  arreglo_hashes << {
    nombre: 'Daniel',
    pais: 'Chile',
    continente: 'America del Sur',
    genero: 'Masculino'
  }

  arreglo_hashes << {
    nombre: 'Adrian',
    pais: 'Chile',
    continente: 'America del Sur',
    genero: 'Masculino'
  }

  arreglo_hashes << {
    nombre: 'Arturo',
    pais: 'Paraguay',
    continente: 'America del Sur',
    genero: 'Masculino'
  }

  arreglo_hashes << {
    nombre: 'Claudio',
    pais: 'Chile',
    continente: 'America del Sur',
    genero: 'Masculino'
  }

  arreglo_hashes << {
    nombre: 'Fernanda',
    pais: 'Chile',
    continente: 'America del Sur',
    genero: 'Femenino'
  }

  arreglo_hashes << {
    nombre: 'Patricia',
    pais: 'Chile',
    continente: 'America del Sur',
    genero: 'Femenino'
  }

  arreglo_hashes << {
    nombre: 'Ignacio',
    pais: 'Tugundu',
    continente: 'Africa',
    genero: 'Masculino'
  }

  arreglo_hashes << {
    nombre: 'Pedro',
    pais: 'Venenzuela',
    continente: 'America del Sur',
    genero: 'Masculino'
  }

print arreglo_hashes
puts puts

# 2. Contar la cantidad de personas de la lista.
puts arreglo_hashes.length
puts

# 3. Generar un array con cada continente, eliminar repeticiones, considerar
# que pueden haber nombres escritos con mayúscula y minúscula.

arreglo_de_continentes = arreglo_hashes.map do |hash|
  hash[:continente].downcase
end
print arreglo_de_continentes.uniq!
puts puts


# 4. Generar una lista con todas las personas llamadas pedro

pedro = []
arreglo_hashes.each do |hash|
  pedro << hash if hash[:nombre] == 'Pedro'
  end
  puts pedro




# 5. Hacer dos listas de personas, una por cada género6. Armar un hash, donde
# cada clave sea un continente y el value un array con los países de cada
#  continente.

hombre = []
arreglo_hashes.map do |hash|
  hombre << hash if hash[:genero] == 'Masculino'
end
puts hombre
puts

mujer = []
arreglo_hashes.map do |hash|
  mujer << hash if hash[:genero] == 'Femenino'
end
puts mujer
puts


hash_continente = {}
arreglo_hashes.each do |hash_persona|
  if !hash_continente.has_key?(hash_persona[:continente])
    hash_continente[hash_persona[:continente]] = [hash_persona[:pais]]
  else
    hash_continente[hash_persona[:continente]] << hash_persona[:pais] unless hash_continente[hash_persona[:continente]].include?(hash_persona[:pais])
  end
end

puts hash_continente.each { |llave, valor| valor.uniq! }
puts
print hash_continente
puts puts

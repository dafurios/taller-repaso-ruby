# Pregunta 9
# Se tiene un string del tipo "1,2,7,1,3,5,3.4,9,1"
# Se pide:
# Calcular el promedio
# Calcular la moda (o sea mostrar el número que más se repite)

a = "1,2,7,1,3,5,3.4,9,1".split(',')
print a
puts puts
puts a[2]
puts
puts a[0]
puts
puts a.length
puts


# Calcular el promedio

suma = 0
a.each do |e|
  suma += e.to_i
end
promedio =  (suma.to_f / a.length).round(2)
puts "el promedio de este arreglo es de '#{promedio}'"
puts puts

# Calcular la moda (o sea mostrar el número que más se repite)

print a.sort #la moda es 1

b = a.group_by { |e| e }.map {|e,ees| [e,ees.size]}

max = b.max_by(&:last).last

# b.select {|_,cnt| cnt == max}.map(&:first)

puts puts
print b.max.last
puts
puts
puts "la moda de este arreglo es '#{b.max.last}'"
puts puts

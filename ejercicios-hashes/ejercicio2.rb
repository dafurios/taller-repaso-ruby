# Ejercicio 2: Operaciones típicas sobre un hash
# Escribir un hash con el menu de un restaurant, la llave es el nombre del
# plato y el valor es el precio de este.

restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }
puts
# 1. Obtener el plato mas caro
caro = restaurant_menu.max_by do |plato, precio|
        precio
      end
      puts "el plato mas caro es #{caro[0]} con un precio de #{caro[1]}"
      puts

# 2. Obtener el plato mas barato
barato = restaurant_menu.min_by do |plato, precio|
        precio
      end
      puts "el plato mas barato es #{barato[0]} con un precio de #{barato[1]}"
      puts

# 3. Sacar el promedio del valor de los platos
def promedio(valor)
  valor.values.sum / valor.values.length
end
promedio(restaurant_menu)
puts "el valor promedio de los platos es #{promedio(restaurant_menu)}"
puts

# 4. Crear un arreglo con solo los nombres de los platos
platos = restaurant_menu.map { |plato, precio| plato}
puts "el listado de los platos del restaurant es #{platos}"
puts

# 5. Crear un arreglo con solo los valores de los platos
valores = restaurant_menu.map { |plato, precio| precio}
puts "el precio de estos platos es de #{valores}"
puts

# 6. Modificar el hash y agregar el IVA a los valores de los platos
# (multiplicar por 1.19).

  def IVA (precio_iva)
   precio_iva.map {|plato, precio| precio * 1.19}
  end

IVA(restaurant_menu)
puts "los valores del precio más IVA de los platos es #{IVA(restaurant_menu)}"
puts

# 7. Dar descuento del 20% para los platos que tengan un nombre de mas 1
# una palabra.

descuento = restaurant_menu.map {|plato, precio| precio * 0.8 if plato.split(" ").length > 1}
puts "el precio del plato '#{caro[0]}' con un 20% de descuento queda en: #{descuento.compact}"
puts

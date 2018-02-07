# Ejercicio 3: Ejercicio completo con un Hash
# Se tiene un hash con el inventario de un negocio de computadores.
# inventario = {"Notebooks": 4, "PC Escritorio": 6, "Routers": 10, "Impresoras": 6}
# Se pide:
# Crear un menú de 4 opciones, o sea el usuario puede ingresar, 1, 2, 3 o 4 y
#  según eso el programa realizará distintas funciones.
# Si el usuario ingresa 1, podrá ingresar un item y su stock en un solo string
#  y agregarlo al hash, para separar el nombre del stock el usuario debe
#  utilizar una coma.
# Ejemplo del input "Pendrives, 100"
# Después de ingresar el valor
# Si el usuario igresa 2, podrá ver el stock total (suma del stock de cada item)
#  que hay en el negocio
# Si el usuario ingresa 3 podrá ver el ítem que tiene la mayor cantidad de stock
# Si el usuario ingresa 4 podrá ingresar preguntarle al sistema si un item
# existe en el inventario o no, por ejemplo el usuario ingresará "Notebooks"
# y el programa responderá "si"
# El programa debe repertirse hasta que el usuario ingrese 5

inventario = {"Notebooks": 4, "PC Escritorio": 6, "Routers": 10, "Impresoras": 6}

opcion = 0
while opcion !=5
  puts puts
  puts 'escoja las siguientes opciones: '
  puts
  puts 'digite 1 para "agregar un item"'
  puts 'digite 2 para "ver stock total de productos"'
  puts 'digite 3 para "ver item con mayor cantidad de stock"'
  puts 'digite 4 para "consultar si un item existe en el inventario"'
  puts 'digite 5 para "salir"'
  puts
  puts 'digite su opcion: '
  opcion = gets.chomp.to_i
  puts
#
case opcion
  when 1
    puts inventario
    puts 'ingrese el item'
    x = gets.chomp
    puts 'cantidad a agregar'
    y = gets.chomp.to_i
    inventario[x.to_sym] = y
    puts inventario
    puts puts

  when 2
    puts
    acumulador = 0
    inventario.each {|key, value| acumulador = acumulador + value}
    puts "el stock total es de #{acumulador}"
    puts puts

  when 3
    puts
    mayor = 0
    inventario.each {|key, value| mayor = value if value > mayor}
    puts "la mayor cantidad de stock es de  #{mayor} unidades"
    puts puts


  when 4
      puts 'buscar un producto'
      clave_buscada = gets.chomp.to_sym
      encontrada = false
      inventario.each {|key, value| encontrada = true if key == clave_buscada}
      puts
      puts encontrada
      puts "el producto #{clave_buscada} es #{encontrada}"
      puts "false = no existe"
      puts "true = existe"
      puts puts

  when 5
    puts 'SALIR'
    puts puts

  else
    puts 'INGRESA OPCION VALIDA'
  end
end

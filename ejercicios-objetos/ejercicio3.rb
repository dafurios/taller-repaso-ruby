# Ejercicio 04
# Se tienen las siguientes clases:
#
# Q herede de T
# Q al hacer inicializado llame a method1
# method1 debe devolver un número al azar
# El método devuelto debe ser guardado en una variable de instancia de Q

class T
 def method1
   rand(1..100)
 end
end

class Q < T
  def method1
    super
  end

end

a = Q.new
puts a #llama al objeto/instancia
puts a.method1 #llama al metodo del objeto

# esto es adicional
b = T.new
puts b.method1

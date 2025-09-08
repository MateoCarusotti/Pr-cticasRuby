=begin
Escribí un script en Ruby que le pida a quien lo ejecute que ingrese su nombre por entrada
estándar (el teclado), y que lo utilice para saludarl@ imprimiendo en pantalla, por ejemplo:
$ ruby script.rb
2 Por favor, ingresá tu nombre:
3 Pepe
4 Hola, Pepe
=end

puts "Por favor, ingresá tu nombre:"
nombre = gets.chomp
puts "Hola #{nombre} todo bien?"
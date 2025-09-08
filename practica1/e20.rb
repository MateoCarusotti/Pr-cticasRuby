=begin
Escribí una función que encuentre la suma de todos los números naturales múltiplos de 3 y 5
(ambos) que sean menores que un número tope que reciba como parámetro. Por ejemplo:
1 multiplos_de_3_y_5(100)
2 # => 315


=end

array = (1..100).to_a
array = array.select{ |num| (num % 3 == 0) and (num % 5 == 0) }
puts array.sum
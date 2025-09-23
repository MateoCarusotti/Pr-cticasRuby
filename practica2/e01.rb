=begin
Implementá un método que reciba como parámetro un arreglo de números, los ordene y devuelva
el resultado. Por ejemplo:
1 ordenar_arreglo([1, 4, 6, 2, 3, 0, 10])
2 # => [0, 1, 2, 3, 4, 6, 10]
=end

def ordenar_arreglo(array)
  array.sort
end

arreglo = [1, 4, 6, 2, 3, 0, 10]
puts ordenar_arreglo(arreglo)
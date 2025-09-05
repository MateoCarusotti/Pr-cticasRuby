=begin
Escribí una función llamada contar que reciba como parámetro dos String y que retorne
la cantidad de veces que aparece el segundo String en el primero, en una búsqueda case-
insensitive (sin distinguir mayúsculas o minúsculas). Por ejemplo:
contar("La casa de la esquina tiene la puerta roja y la ventana blanca.", "la")
=end

def contar(str_1, str_2)
  str_1.downcase.scan(str_2.downcase).count
  
end

puts contar("La casa de la esquina tiene la puerta roja y la ventana blanca.", "la")
 

=begin
scan con un parametro crea un array con conteniendo las veces que aparecio ese parametro, count solo cuenta la cantidad de elemento,
es lo mismo que hacer size no'
count con un parametro toma a ese parametro como un expresion no?
si hago str_1.downcase.count(str_2) me da 18 porque busca en el str_1 el la expresion 'la'
=end
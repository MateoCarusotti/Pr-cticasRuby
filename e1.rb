# Investiga y prueba en un intérprete de Ruby cómo crear objetos de los siguientes tipos básicos,
# tanto mediante el uso de literales como utilizando el constructor new (cuando sea posible):
# • Symbol
# • String
# • Array
# • Hash


simbolo = "esto es un simbolo"
simbolo = simbolo.to_sym
puts simbolo.class

simbolo2 = :simbolo2
puts simbolo2.class

simbolo3 = Symbol.new("simbolo3") rescue nil
puts simbolo3.class


string = "esto es un string"
puts string.class

string2 = String.new("string con new")
puts string2.class

array = [1,2]
puts array.class

array2 = Array.new([2,3])
puts array2.class 

hash = {"a" => 2, b:4} #preguntar 
puts hash.class

hash2 = Hash.new({c:3, d:5})
puts hash2.class

puts hash[:a]


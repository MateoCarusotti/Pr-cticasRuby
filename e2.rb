#"¿De qué forma(s) se puede convertir un objeto (cualquiera fuere su tipo o clase) en String?"

numero = 123
puts numero.class
puts numero.to_s.class

simbolo = :simbolo
puts simbolo.class

puts simbolo.to_s.class

array = [1,2,3]
puts array.to_s.class

hash0 = {a:1, b:4}
puts hash0
hash = Hash.new
hash[:a] = 1 # preguntar por que imprime vacio el hash
puts hash


=begin
Dada una cadena cualquiera, y utilizando los métodos que provee la clase String, realizá
las siguientes operaciones sobre dicha cadena, implementando métodos que funcionen de la
siguiente forma:
string_reverso: retorna el string con los caracteres en orden inverso.
string_sin_espacio: elimina los espacios en blanco que contenga.
string_a_arreglo_ascii: retorna un arreglo con cada uno de los caracteres conver-
tidos a su correspondiente valor ASCII.
string_remplaza_vocal: cambia las vocales por números:
– "a" o "A" por "4",
– "e" o "E" por "3",
– "i" o "I" por "1",
– "o" u "O" por "0",
– y "u" o "U" por "6"
=end

def string_reverso(cadena)
  cadena = cadena.reverse
end

def string_sin_espacio(cadena)
  cadena = cadena.split.join
end

def string_a_arreglo_ascii(cadena)
  #cadena = cadena.each_byte.to_a -> primera version
  cadena = cadena.bytes.to_a
end

def string_remplaza_vocal(cadena)
  replace_hash = {'a' => 4 , 'e' => 3, 'i' => 1, 'o' => 0, 'u' => 6 }
  regex = Regexp.union(replace_hash.keys) # Creo un regex con las keys del hash de arriba
  cadena.downcase.gsub(regex,replace_hash) #No entiendo muy bien porque puedo pasar el hash como segundo parametro
  # en la docu no hay ejemplos https://ruby-doc.org/3.3.5/String.html#class-String-label-Substitution+Methods
end

cadena = "hola mundo"
puts string_reverso(cadena)
puts string_sin_espacio(cadena)
p string_a_arreglo_ascii(cadena)
puts string_remplaza_vocal(cadena)
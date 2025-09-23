=begin
Escribí un método que dado un número variable de parámetros que pueden ser de cualquier
tipo, imprima en pantalla la cantidad de caracteres que tiene su representación como String
y la representación que se utilizó para contarla.
Por ejemplo:
1 longitud(9, Time.now, 'Hola', {un: 'hash'}, :ruby)
2 # Debe imprimir:
3 # "9" --> 1
4 # "2025-09-14 13:22:10 +0000" --> 25
5 # "Hola" --> 4
6 # {:un=>"hash"} --> 13
7 # ruby --> 4
Nota: Para convertir cada parámetro a string utilizá el método #to_s presente en todos
los objetos
=end

def longitud(*args)
  hash = {}
  args.each do |param|
    hash.update({"#{param}": param.to_s.length })
  end
  hash
end

puts longitud(9, Time.now, 'Hola', {un: 'hash'}, :ruby)

#update mergea mi hash con uno que le pase por parametro, si las key se repiten toma el ultimo valor
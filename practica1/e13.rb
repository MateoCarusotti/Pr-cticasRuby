=begin
Escribí una función llamada listar que reciba un Hash y retorne un String con los pares de 
clave/valor formateados en una lista ordenada en texto plano. Por ejemplo
listar({ perros: 2, gatos: 2, peces: 0, aves: 0 })
2 # => "1. perros: 2\n2. gatos: 2\n3. peces: 0\n4. aves: 0"

=end

#version Con contador manual
=begin
def listar(hash)
  count = 1
  result = ""
  hash.each_pair do |key, value|
    result.concat(count.to_s,'. ',key.to_s, ': ',value.to_s,'\n')
    count = count + 1
  end
  result
end
=end

#Version haciendo each_with_index sobre each_pair
def listar(hash)
  result = ""
  hash.each_pair.each_with_index do |(key, value), index|
    result.concat((index + 1).to_s,". ",key.to_s, ": ",value.to_s,"\n") #No entendi si \n queria decir \n literal o un 
    #salto de linea
  end
  result
end
puts listar({ perros: 2, gatos: 2, peces: 0, aves: 0 })
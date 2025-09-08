=begin
Mejorar la función anterior en una nueva llamada listar_mejorada para que además reciba
opcionalmente un parámetro llamado pegamento (su valor por defecto debe ser ": ") que
sea el que utilice para unir los pares de clave/valor. Por ejemplo:
1 listar_mejorada({ perros: 2, gatos: 2, peces: 0, aves: 0 }, " -> "
)
2 # => "1. perros -> 2\n2. gatos -> 2\n3. peces -> 0\n4. aves -> 0"

=end

def listar_mejorada(hash, pegamento = ' : ') #valor por default al ser opcional
  result = ""
  hash.each_pair.each_with_index do |(key, value), index|
    result.concat((index + 1).to_s,". ",key.to_s, pegamento ,value.to_s,"\n") 
  end
  result
end
puts listar_mejorada({ perros: 2, gatos: 2, peces: 0, aves: 0 })
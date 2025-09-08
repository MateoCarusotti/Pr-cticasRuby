=begin
Implementá las funciones necesarias para que, dado un color expresado en notación RGB, se
pueda obtener su representación en las notaciones entera y hexadecimal. La notación entera
se define como red + green * 256 + blue * 256 * 256 y la hexadecimal como el
resultado de expresar en base 16 el valor de cada color y concatenarlos en orden. Por ejemplo:
1 notacion_hexadecimal([0, 128, 255])
2 # => '#0080FF'
3 notacion_entera([0, 128, 255])
4 # => 16744448
=end

def notacion_entera(color)
  resultado = color[0] + (color[1] * 256) + (color[2] * 256 * 256)
end

def notacion_hexadecimal(color)
  resultado = ""
  color.each do |value| 
    hex = value.to_s(16).rjust(2, '0') #rjust si el argumento que le paso '2' es mayor que la longitud del string
    #mueve el string a la derecha y completa con el caracter que le paso '0'
    resultado.concat(hex)
  end
  resultado = resultado.upcase
end


color = [0, 128, 255]

puts "El color en notacion entera es #{notacion_entera(color)} y la notacion hexadecimal es #{notacion_hexadecimal(color)}"
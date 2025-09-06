=begin
Escribí una función longitud que dado un arreglo que contenga varios String cualesquiera,
retorne un nuevo arreglo donde cada elemento es la longitud del String que se encuentra en
la misma posición del arreglo recibido como parámetro. Por ejemplo:
1 longitud(['TTPS', 'Opción', 'Ruby', 'Cursada 2025'])
# => [4, 6, 4, 12]
=end

def longitud(cadena)
  cadena.map do |palabra|
    palabra.length
  end
end

cadena = "TTPS Opcion Ruby Cursada_2025".split(" ")
p cadena

puts longitud(cadena)
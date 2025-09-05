=begin 
Escribí una función que exprese en palabras la hora que recibe como parámetro, según las
siguientes reglas:
•Si el minuto está entre 0 y 10, debe decir “en punto”,
•si el minuto está entre 11 y 20, debe decir “y cuarto”,
•si el minuto está entre 21 y 34, debe decir “y media”,
•si el minuto está entre 35 y 44, debe decir “menos veinticinco” con la hora siguiente,
•si el minuto está entre 45 y 55, debe decir “menos cuarto” con la hora siguiente,
•y si el minuto está entre 56 y 59, debe decir “Casi son las” con la hora siguiente
Tomá como ejemplos los siguientes casos:
1 tiempo_en_palabras(Time.new(2025, 10, 21, 10, 1))
2 # => "Son las 10 en punto"
3 tiempo_en_palabras(Time.new(2025, 10, 21, 9, 33))
4 # => "Son las 9 y media"
5 tiempo_en_palabras(Time.new(2025, 10, 21, 8, 45))
6 # => "Son las 9 menos cuarto"
7 tiempo_en_palabras(Time.new(2025, 10, 21, 6, 58))
8 # => "Casi son las 7"
9 tiempo_en_palabras(Time.new(2025, 10, 21, 0, 58))
10 # => "Casi es las 1"
Es importante considerar que cuando la hora es 1, la forma correcta de expresarla no es
“Son las 1 en punto”, sino “Es la 1 en punto”. Esto debe tenerse en cuenta en cada uno de
los casos expresados en el enunciado de este ejercicio.
Tip: resolver utilizando rangos numéricos
=end

def definir_hora(hora)
  
  if hora == 1 then
    "Es la 1 "
  else
    "Son las ".concat(hora.to_s + ' ') 
  end
end

def definir_hora_casi(hora)
  
  if hora == 1 then
    "es "
  else
    "son " 
  end
end


def tiempo_en_palabras(time)
  rango_0_10 = (0..10)
  rango_11_20 = (11..20)
  rango_21_34 = (21..34)
  rango_35_44 = (35..44)
  rango_45_55 = (45..55)
  rango_56_59 = (56..59)

  minuto = time.min
  hora = time.hour
  resultado = ""
  case minuto
  when rango_0_10
    resultado.concat(definir_hora(hora), 'en punto')
  when rango_11_20
    resultado.concat(definir_hora(hora), 'y cuarto')
  when rango_21_34
    resultado.concat(definir_hora(hora), 'y media')
  when rango_35_44
     resultado.concat(definir_hora(hora + 1), 'menos veinticinco')
  when rango_45_55
     resultado.concat(definir_hora(hora + 1 ), 'menos cuarto')
  when rango_56_59
     resultado.concat('Casi ', definir_hora_casi(hora + 1), 'las ', (hora + 1).to_s)
  end

end


puts tiempo_en_palabras(Time.new(2025, 10, 21, 10, 1))

puts tiempo_en_palabras(Time.new(2025, 10, 21, 9, 33))

puts tiempo_en_palabras(Time.new(2025, 10, 21, 8, 45))

puts tiempo_en_palabras(Time.new(2025, 10, 21, 6, 58))

puts tiempo_en_palabras(Time.new(2025, 10, 21, 0, 58))
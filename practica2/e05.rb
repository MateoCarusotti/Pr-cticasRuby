=begin
Implementá el método cuanto_falta?que opcionalmente reciba como parámetro un objeto
Time y que calcule la cantidad de minutos que faltan para ese momento. Si el parámetro de
fecha no es provisto, asumí que la consulta es para la medianoche de hoy.
Por ejemplo:
1 cuanto_falta? Time.new(2032, 12, 31, 23, 59, 59)
2 # => Retorna la cantidad de minutos que faltan para las 23:59:59
del 31/12/2032
3 cuanto_falta?
4 # => Retorna la cantidad de minutos que faltan para la medianoche
de hoy
=end


def cuanto_falta?(time = Time.new(Time.now.year, Time.now.month, Time.now.day, 23, 59, 59))
  ((time - Time.now) / 60).to_i
end

puts cuanto_falta? Time.new(2032, 12, 31, 23, 59, 59)
puts cuanto_falta?


TIEMPO_ACTUAL = { anio: Time.now.year, mes:  Time.now.month, dia:  Time.now.day }

def cuanto_falta2?(tiempo = Time.new(TIEMPO_ACTUAL[:anio], TIEMPO_ACTUAL[:mes], TIEMPO_ACTUAL[:dia], 23, 59, 59))
  ahora = Time.now
  ((tiempo - ahora) / 60).to_i
end

puts cuanto_falta2? Time.new(2032, 12, 31, 23, 59, 59)
puts cuanto_falta2?

#2 soluciones,en la segunda por que tengo que pasar una constante y no una variable?
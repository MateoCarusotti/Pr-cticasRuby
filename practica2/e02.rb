=begin
Modificá el método anterior para que en lugar de recibir un arreglo como único parámetro, reciba
todos los números como parámetros separados. Por ejemplo:
1 ordenar(1, 4, 6, 2, 3, 5, 0, 10, 9)
2 # => [0, 1, 2, 3, 4, 5, 6, 9, 10]
=end

def ordenar(*args)
  args.sort
end

puts ordenar(1, 4, 6, 2, 3, 5, 0, 10, 9)

=begin version recibiendo de afuera del script
def ordenar
  ARGV.sort
end

puts ordenar
=end
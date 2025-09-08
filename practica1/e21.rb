
=begin
Creá otra función, similar a la anterior, que busque los números naturales múltiplos de N números
enteros que recibirá como parámetro en un arreglo. Por ejemplo:
1 multiplos_de([3, 5], 100)
2 # => 315
3 multiplos_de([3, 5, 17, 28, 65], 100_000)
4 # => 92820
5
=end

def es_multiplo(numeros, numero)
  #evalua si un numero 'numero' es multiplo de todos los numeros pasados por parametro 'numeros'
  numeros.each do |comparcion|
    if not (numero % comparcion == 0)
      return false
    end
  end
  return true
end

def funcion(numeros, limite)
  array = (1..limite).to_a #es correcto hacer esto asi?
  array = array.select { |num| (es_multiplo(numeros,num)) }
  #evaluo si cada numero del array retorna true en la funcion es_multiplo
  array.sum
end

puts funcion([3, 5, 17, 28, 65], 100_000)


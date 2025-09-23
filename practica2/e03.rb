=begin
Suponé que se te da el método que implementaste en el ejercicio 2 para que lo uses a fin de
ordenar un conjunto de números que te son provistos en forma de arreglo. ¿Cómo podrías
invocar el método? Por ejemplo, teniendo la siguiente variable con los números a ordenar:
1 entrada = [10, 9, 1, 2, 3, 5, 7, 8]
2 # Dada `entrada', invocá a #ordenar utilizando los valores que
contiene la variable
3 ordenar(entrada) # <= Esto no funciona. Corregí esta invocación
para que funcione.
=end

def ordenar(*args)
  args.sort
end

entrada = [10, 9, 1, 2, 3, 5, 7, 8]
puts ordenar(*entrada)

# * convierte los datos 
# Preguntar si habia otra forma
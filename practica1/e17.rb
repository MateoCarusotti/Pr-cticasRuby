=begin
Escribí un nuevo script, que de manera similar al implementado en el punto anterior haga el
saludo usando un nombre que se provea, pero que en lugar de solicitar que el nombre se ingrese
por entrada estándar, éste se reciba como argumento del script. Por ejemplo:
$ ruby script.rb Pepe
2 Hola, Pepe
Tip: investigá cómo se puede trabajar con los argumentos que recibió el script Ruby en su
ejecución
=end

puts "Hola, #{ARGV[0]}"

=begin
ruby e17.rb juan -> esto pasa en la posicion 0 de ARGV juan
si yo hago ruby e17.rb juan perez tengo 2 parametros en ARGV, ya que separa por espacios en blanco
si yo hago ruby e17.rb "juan perez" esto pasa como un solo argumento
=end
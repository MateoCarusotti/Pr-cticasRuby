=begin
¿Cuál es el valor de retorno del siguiente código?
1 [:upcase, :downcase, :capitalize, :swapcase].map do |meth|
2 "TTPS Ruby".send(meth)
3 end
=end

#Respuesta antes de ejecutar: tTPS RUBY
def metodo()
  [:upcase, :downcase, :capitalize, :swapcase].map do |meth|
    "TTPS Ruby".send(meth)
  end
end

puts metodo()

#no entendi porque el ultimo resultado fue "ttps rUBY"
#segun lo que entendi al usar map aplico cada funcion sobre la misma base, no se concaten las operaciones, para eso hay que usar
#inject en vez de map

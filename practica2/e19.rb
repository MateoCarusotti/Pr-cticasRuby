class NoEsUnaPalabra < StandardError
  def initialize(msg, palabra)
    puts msg + palabra
  end
end

class Palabra
  
 attr_accessor :palabra

 def initialize(palabra)
  resu = palabra.scan(/\W/)
  if resu.size > 0 or palabra.include?(" ")
    raise NoEsUnaPalabra.new("#{palabra} no es una palabra", palabra)
  else
    self.palabra = palabra
    puts palabra
  end
 end

end

p = Palabra.new("Hola")
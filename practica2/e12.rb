=begin
Modificá la implementación del ejercicio anterior para que GenericFactory sea un módulo
que se incluya como Mixin en las subclases que implementaste. ¿Qué modificaciones tuviste que
hacer en tus clases?
=end

module GenericFactory
  
  def create(**args)
    new(**args)
  end

  def initialize(**args)
    raise NotImplementedError
  end
end

class ConcreteFactory
  extend GenericFactory
  attr_accessor :nombre

  def initialize(**args)
    self.nombre = args[:nombre]
  end

  def to_s
    puts "Mi nombre es #{self.nombre}"
  end

end

cf = ConcreteFactory.create(nombre: "Pepe")
cf.to_s

# Tuve que cambiar el metodo de create para que sea de 
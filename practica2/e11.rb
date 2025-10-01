=begin
Dada la siguiente clase abstracta GenericFactory, implementá subclases de la misma que
permitan la creación de instancias de dichas clases mediante el uso del método de clase .
create, de manera tal que luego puedas usar esa lógica para instanciar objetos sin invocar
directamente el constructor new.
4
Práctica 2: Clases, módulos, métodos, bloques, enumeradores y excepciones
1 class GenericFactory
2 def self.create(**args)
3 new(**args)
4 end
5
6 def initialize(**args)
7 raise NotImplementedError
8 end
9 end
=end

class GenericFactory
  def self.create(**args)
    new(**args)
  end

  def initialize(**args)
    raise NotImplementedError
  end
end

class ConcreteFactory < GenericFactory
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

#Por que para llamar a create tengo que enviar "nombre:" antes del valor de mi parametro?
# ConcreteFactory.create tengo que llamar a este create para que ejecute el create de la clase 
# GenericFactory y cuando esta clase haga new se tome el initialize de la clase ConcreteFactory
# create de GenericFactory -> se ejecuta el new dentro del metodo -> como la que hizo la llamada es
# ConcreteFactory se eejcuta el initialize de esta clase no la del padre

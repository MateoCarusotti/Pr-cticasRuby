=begin
Analizá el siguiente script e indicá:
=end
VALUE = 'global'

module A
  VALUE = 'A'

  class B
    VALUE = 'B'

    def self.value
      VALUE
    end

    def value
      'iB'
    end
  end

  def self.value
    VALUE
  end
end

class C
  class D
    VALUE = 'D'

    def self.value
      VALUE
    end
  end

  module E
    def self.value
      VALUE
    end
  end

  def self.value
    VALUE
  end
end

class F < C
  VALUE = 'F'
end

# 1. ¿Qué imprimen cada una de las siguientes sentencias? ¿De dónde está obteniendo el valor?
puts A.value #A lo obtiene de su constante de clase
puts A::B.value #B lo obtiene de su constante de clase
puts C::D.value #D lo obtiene de su constante de clase
puts C::E.value #global lo obtiene de la constante global
puts F.value #global lo obtiene de la constante global

#2. ¿Qué pasaría si ejecutases las siguientes sentencias? ¿Por qué?
puts A::value
puts A.new.value #Falla porque A es un modulo y no una clase
puts B.value #Falla porque directamente la clase B no existe si no se accede mediante A
puts C::D.value
puts C.value
puts F.superclass.value
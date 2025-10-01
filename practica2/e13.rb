=begin
Extendé las clases TrueClassy FalseClasspara que ambas respondan al método de instan-
cia opposite, el cual en cada caso debe retornar el valor opuesto al que recibe la invocación
al método. Por ejemplo:
1 false.opposite
2 # => true
3 true.opposite
4 # => false
5 true.opposite.opposite
6 # => true
=end

module Opposite 

  def opposite
    return ! self
  end
end

TrueClass.include(Opposite)
FalseClass.include(Opposite)

puts true.opposite
puts false.opposite


=begin
Implementá el Mixin Countable que te permita hacer que cualquier clase cuente la cantidad
de veces que los métodos de instancia definidos en ella es invocado. Utilizalo en distintas clases,
tanto desarrolladas por vos como clases de la librería standard de Ruby, y chequeá los resultados.
El Mixin debe tener los siguientes métodos
1. count_invocations_of(sym): método de clase que al invocarse realiza las tareas 
necesarias para contabilizar las invocaciones al método de instancia cuyo nombre es sym (un símbolo).
2. invoked?(sym): método de instancia que devuelve un valor booleano indicando si el
método llamado sym fue invocado al menos una vez en la instancia receptora.
3. invoked(sym): método de instancia que devuelve la cantidad de veces que el método
identificado por sym fue invocado en la instancia receptora.
Por ejemplo, su uso podría ser el siguiente
ver pdf
=end

module Countable

  def Countable.include(m)
    @count = 0
  end

  def self.count_invocations_of(sym)
    define_method(:new_sym, instance_method(:new))
    alias_method :sym, :new_sym
  end

  def new
    puts "Holaaa"
    @count += 1
    sym
  end

  def invoked? (sym)
    if @count.nil? or @count == 0 then
      return false
    end
    return true
  end

  def invoked(sym)
    return @count
  end

end


class User
  attr_accessor :id, :clave, :email
  
  include Countable

  def initialize(id, clave, email)
    self.id = id
    self.clave = clave
    self.email = email

  end


  def to_s
    return " Hola mi email es #{self.email} y soy un (#{self.class})"
  end

  Countable.count_invocations_of(:to_s)

end

user = User.new(1,"123","juan@gmail.com")

puts user.invoked? :to_s

puts user.to_s
puts user.to_s
puts user.invoked? :to_s
puts user.invoked :to_s
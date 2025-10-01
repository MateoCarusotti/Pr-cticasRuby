=begin
Implementá el módulo Reversopara utilizar como Mixin e incluilo en alguna clase para probarlo.
Reverso debe contener los siguientes métodos:
1. #di_tcejbo: Imprime el object_id del receptor en espejo (en orden inverso).
2. #ssalc: Imprime el nombre de la clase del receptor en espejo

=end

module Reversopara

  def di_tcejbo
    puts self.to_s.reverse
  end

  def ssalc
    puts self.class.to_s.reverse
  end

end

class User
  attr_accessor :id, :clave, :email
  include Reversopara

  def initialize(id, clave, email)
    self.id = id
    self.clave = clave
    self.email = email

  end

end

user = User.new(1,"123","juan@gmail.com")
user.ssalc()
user.di_tcejbo()
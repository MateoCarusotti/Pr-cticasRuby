=begin
Luego de implementar el ejercicio anterior (e06), modificalo para que los usuarios implementen el
método #to_s que debe retornar el atributo usuario (o email, según hayas decidido utilizar) y
el rol que posee.
=end

require_relative 'roles'
require_relative 'usuarios'

class Documento
  attr_accessor :creador, :contenido, :publico, :borrado

  def initialize(usuario, publico = true, contenido = '')
    self.creador = usuario
    self.publico = publico
    self.contenido = contenido
    self.borrado = false
  end

  def borrar
    self.borrado = true
  end

  def puede_ser_visto_por?(usuario)
    usuario.puede_ver? self
  end

  def puede_ser_modificado_por?(usuario)
    usuario.puede_modificar? self
  end

  def puede_ser_borrado_por?(usuario)
    usuario.puede_borrar? self
  end
end





rol_lector = Lector.new()
rol_admin = Administrador.new()
rol_director = Director.new()
rol_redactor = Redactor.new()
useradmin = User.new(1,"123","juan@gmail.com",rol_admin)
userlec = User.new(2,"333","lector@gmail.com",rol_lector)
userdirec = User.new(3,"444","directorqgmail.com",rol_director)
userredactor = User.new(4,"555","redactor@gmail.com",rol_redactor)

puts useradmin.to_s
puts userlec.to_s
puts userdirec.to_s
puts userredactor.to_s

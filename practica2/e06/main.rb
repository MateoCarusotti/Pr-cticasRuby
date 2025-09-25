=begin
Modelá con una jerarquía de clases la siguiente situación:
Los usuarios finales de una aplicación tienen los atributos básicos que permiten identificarlos
(usuario, clave, email - los que consideres necesarios), y un rol que determina qué operaciones
pueden hacer. Los roles posibles son: Lector, Redactor, Director y Administrador. Cada usuario
gestiona Documentos según su rol le permita, acorde a las siguientes reglas:
•Los Lectores pueden ver cualquier Documento que esté marcado como público.
•Los Redactores pueden hacer todo lo que los Lectores y además pueden cambiar el con-
tenido de los Documentos que ellos crearon.
•Los Directores pueden ver y cambiar el contenido de cualquier documento (público o
privado, y creado por cualquier usuario), excepto aquellos que hayan sido borrados.
•Los Administradores pueden hacer lo mismo que los directores y además pueden borrar
Documentos.
Utilizando el siguiente código para la clase Documento, implementá las clases que consid-
eres necesarias para representar a los usuarios y sus roles, completando la funcionalidad aquí
presente:
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
doc = Documento.new(useradmin)

puts doc.puede_ser_borrado_por?(userlec)
puts doc.puede_ser_borrado_por?(useradmin)
puts doc.puede_ser_borrado_por?(userdirec)
puts doc.puede_ser_borrado_por?(userredactor)


#El admin no deberia poder modificar los borrados o no?
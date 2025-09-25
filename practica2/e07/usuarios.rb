require_relative 'roles'
class User
  attr_accessor :id, :clave, :email, :rol

  def initialize(id, clave, email, rol)
    self.id = id
    self.clave = clave
    self.email = email
    self.rol = rol
  end

  def puede_borrar?(document)
    return self.rol.borrar()
  end

  def puede_modificar?(document)
    return self.rol.editar(document)
  end

  def puede_ver?(document)
    return self.rol.leer(document)
  end

  def to_s
    return "#{self.email} (#{self.rol.class})"
  end

end
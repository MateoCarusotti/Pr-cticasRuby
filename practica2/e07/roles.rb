class Rol
  
  def borrar()
    return false
  end

  def editar(document)
    return false
  end

  def leer(document)
    if document.publico 
      return true
    else
      return false
    end
  end


end

class Lector < Rol
end

class Redactor < Lector
  def editar(document)
    if document.creador == self
      return true
    end
    return false
  end
end

class Director < Rol

  def leer(document)
    if document.borrado
      return false
    end
    return true
  end

  def editar(document)
    if document.borrado
      return false
    end
    return true
  end
  
end

class Administrador < Director
  def borrar()
    return true
  end
end
=begin
Investigá qué métodos provee Ruby para:
• Obtener la lista de ancestros (superclases) de una clase.
• Conocer la lista de métodos de una clase.
• Conocer la lista de métodos de instancia de una clase.
• Conocer las variables de instancia de una clase.
• Obtener el valor de una variable de instancia de un objeto (sin utilizar un método generado
con attr_reader o similar) accediéndolo desde fuera de éste.
• Establecer el valor de una variable de instancia de un objeto (sin utilizar un método generado
con attr_writer o similar) desde fuera de éste.


 Obtener la lista de ancestros (superclases) de una clase.
  se hace con el metodo  superclass, retorna nil cuando no tienen superclase. Ej: BasicObject.superclass   #=> nil

Conocer la lista de métodos de una clase
  methods  para todos los metodos, incluyendo los heredados, methods(false) sin lo heredados

Conocer la lista de métodos de instancia de una clase.
  instance_methods para todos los metodos, incluyendo los heredados, con instance_methods(false) sin lo heredados

Conocer las variables de instancia de una clase.
  con instance_variables

Obtener el valor de una variable de instancia de un objeto (sin utilizar un método generado
con attr_reader o similar) accediéndolo desde fuera de éste.
  instance_variable_get(:@nombre)

Establecer el valor de una variable de instancia de un objeto (sin utilizar un método generado
con attr_writer o similar) desde fuera de éste.
  instance_variable_set(:@edad, 23)

=end

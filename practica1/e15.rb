=begin
Escribí un método que reciba un argumento y retorne un valor booleano indicando si la ca-
dena recibida como argumento es pentavocálica o panvocálica (contiene todas las vocales). El
chequeo no debe ser sensible a minúsculas y mayúsculas.
=end
def es_pentavolica(cadena)
  vocales = "^aeiou" #Agrego ^porque delete NO borra los caracteres que tengan este simbolo

  cadena.downcase.delete(vocales).split("").to_set
end

cadena = "hola que tal? sos alguien muy capo"
if es_pentavolica(cadena).length == 5 then
  puts "es pentavocálica"
else
  puts "no es pentavocálica"
end

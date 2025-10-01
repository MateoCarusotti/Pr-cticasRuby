=begin

Escribí un método da_nil? que reciba un bloque, lo invoque y retorne si el valor de retorno
del bloque fue nil. Por ejemplo:
da_nil? { }
# => true
da_nil? do
  'Algo distinto de nil'
end
# => false
=end

def da_nil?
  if yield == nil
    puts true
  else
    puts false
  end
end


da_nil? do
  'Algo distinto de nil'
end

da_nil? { }
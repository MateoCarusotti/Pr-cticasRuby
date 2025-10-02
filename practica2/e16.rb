=begin
Implementá un método que reciba como parámetros un Hash y un Proc, y que devuelva un
nuevo Hashcuyas las claves sean los valores del Hashrecibido como parámetro, y cuyos valores
sean el resultado de invocar el Proc con cada clave del Hash original. Por ejemplo:
1 hash = { 'clave'=> 1, :otra_clave => 'valor'}
2 procesar_hash(hash, ->(x) { x.to_s.upcase })
3 # => { 1 => 'CLAVE', 'valor'=> 'OTRA_CLAVE'}

=end

def procesar_hash(hash, proc)
  hash.map { |key, value| [value, proc.call(key)] }.to_h
  
end

hash = { 'clave'=> 1, :otra_clave => 'valor'}

puts procesar_hash(hash, ->(x) { x.to_s.upcase })
module Countable
  def self.included(base)
    base.define_singleton_method(:count_invocations_of) do |sym|
      alias_method :"orig_#{sym}", sym

      define_method(sym) do |*args, &blk|
        @__invocations ||= Hash.new(0)
        @__invocations[sym] += 1
        send(:"orig_#{sym}", *args, &blk)
      end
    end
  end

  def invoked?(sym)
    !!(@__invocations && @__invocations[sym] > 0)   # 👈 fuerza true/false
  end

  def invoked(sym)
    @__invocations ? @__invocations[sym] : 0
  end
end


class User
  include Countable
  attr_accessor :id, :clave, :email

  def initialize(id, clave, email)
    self.id = id
    self.clave = clave
    self.email = email
  end

  def to_s
    "Hola mi email es #{self.email} y soy un (#{self.class})"
  end

  count_invocations_of :to_s
end


# Prueba
user = User.new(1, "123", "juan@gmail.com")

puts user.invoked? :to_s   # false
puts user.to_s             # invocación 1
puts user.to_s             # invocación 2
puts user.invoked? :to_s   # true
puts user.invoked :to_s    # 2

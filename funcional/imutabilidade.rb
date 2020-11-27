a = 'a'
->{a << 'b'}.call()
puts a
# => 'ab'

a = 'a'.freeze
->{a <<  'b'}.call()
puts a
# => (FrozenError)

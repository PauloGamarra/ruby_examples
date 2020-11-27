
['Ruby', 'On', 'Rails', '!'].reduce('') {|a,b| a + b}
# => "RubyOnRails!"

factorial = ->(x){(1..x).reduce(1,:*)}
factorial.call(5)

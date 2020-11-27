->{"a"}.call
# => "a"

->(x){"a" + x}.call("b")
# => "ab"

lambda {2}.call
# => 2

lambda {|x| 2 + x}.call(3)
# => 5

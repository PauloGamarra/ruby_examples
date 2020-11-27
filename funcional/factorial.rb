
def tail_recursive_fact(n, acc = 1)
  return acc if n <= 1
  tail_recursive_fact(n - 1, acc * n)
end

puts tail_recursive_fact(100000)

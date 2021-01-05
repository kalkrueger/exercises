def find_fibonacci_index_by_length(int)
  fib = 1
  a = fib
  b = fib
  index = 2
  until fib.to_s.length == int do
    fib = a + b
    a = b
    b = fib
    index += 1
  end
  index
end

p find_fibonacci_index_by_length(2) == 7
p find_fibonacci_index_by_length(3) == 12
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
#find_fibonacci_index_by_length(10000) == 47847

def fibonacci(n)
  return 1 if n < 2
  a = 1
  b = 1
  c = nil
  (n-2).times do
    c = a + b
    a = b
    b = c
  end
  c
end

p fibonacci(4)

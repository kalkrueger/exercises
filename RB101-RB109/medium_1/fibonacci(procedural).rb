def fibonacci(n)
  first = 0
  second = 1
  ans = 1
  (n-1).times do
    ans = first + second
    first = second
    second = ans
  end
  ans
end

p fibonacci(100)

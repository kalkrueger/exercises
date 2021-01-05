def multiply(num1, num2)
  num1 * num2
end

def square(num, pow)
  num2 = 1
  pow.times do
    num2 = multiply(num, num2)
  end
  num2
end

a = 5
b = 1

p square(a, b)

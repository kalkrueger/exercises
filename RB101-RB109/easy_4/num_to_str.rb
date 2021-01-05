def integer_to_string(num)
  arr = []
  arr << num % 10
  num = (num - (num % 10)) / 10
  while num > 0 do
    arr << num % 10
    num = (num - (num % 10)) / 10
  end
  p arr
  arr.reverse.join
end

p integer_to_string(4321)
p integer_to_string(0) == '0'
p integer_to_string(5000)

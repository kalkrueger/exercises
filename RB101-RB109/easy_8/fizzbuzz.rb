def fizzbuzz(num1, num2)
  arr = []
  num1.upto(num2) do |num|
    if num % 3 == 0 && num % 5 == 0
      arr << 'FizzBuzz'
    elsif num % 3 == 0
      arr << 'Fizz'
    elsif num % 5 == 0
      arr << 'Buzz'
    else
      arr << num
    end
  end
  puts arr.join(', ')
end

fizzbuzz(1, 15)

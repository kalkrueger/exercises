#action: collect 2 positive integers
  #print the functions and their outputs

#Flow: ask for and collect integers
  # run the integers through a series of methods
      #methods print the function and outputs

def collect(str)
  puts "What is the #{str}  number?"
  gets.chomp.to_f
end

def addition(num1, num2)
  ans = num1 + num2
  puts "#{num1} + #{num2} = #{ans}"
end

def subtract(num1, num2)
  ans = num1 - num2
  puts "#{num1} - #{num2} = #{ans}"
end

def product(num1, num2)
  ans = num1 * num2
  puts "#{num1} * #{num2} = #{ans}"
end

def div(num1, num2)
  ans = (num1 / num2).round(2)
  puts "#{num1} / #{num2} = #{ans}"
end

def remainder(num1, num2)
  ans = num1 % num2
  puts "#{num1} % #{num2} = #{ans}"
end

def power(num1, num2)
  ans = (num1 ** num2).round
  puts "#{num1} ** #{num2} = #{ans}"
end

first = collect('first')
second = collect('second')
addition(first, second)
subtract(first, second)
product(first, second)
div(first, second)
remainder(first, second)
power(first, second)

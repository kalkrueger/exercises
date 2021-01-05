# Question: does the 6th number entered appear in the first 5 numbers entered?
    #integers only (for simplicity)

# Return: t/f that returns a string depending

#action:
  #collect first 5 numbers in an array
  #is 6th number included in the array?

five_arr = []

def prompt(input, five_arr)
  num = nil
  loop do
    puts "Please enter your #{input} number"
    num = gets.chomp
    if num == num.to_i.to_s && five_arr.size < 5
      five_arr << num.to_i
    elsif  num == num.to_i.to_s
      test_six(num, five_arr)
    else
      puts "Please enter a number!"
    end
    break
  end
end

def test_six(num, five_arr)
  if five_arr.include?(num.to_i)
    puts "#{num} is included in #{five_arr}!"
  else
   puts "#{num} is NOT included in #{five_arr}."
  end
end

loop do
  case five_arr.size
  when 0
    prompt('1st', five_arr)
  when 1
    prompt('2nd', five_arr)
  when 2
    prompt('3rd', five_arr)
  when 3
    prompt('4th', five_arr)
  when 4
    prompt('5th', five_arr)
  when 5
    prompt('6th', five_arr)
    break
  end
end

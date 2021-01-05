#create range based on argument
  #iterate through range putting space times (argument - num)
  #put * times num

def triangle(num)
  (1..num).reverse_each do |i|
    puts (" " * (num - i)) + ("*" * i)
  end
end

triangle(9)

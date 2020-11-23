def stringy(num)
  string = ''
  num.times do |n|
    number = n.even? ? '1' : '0'
    string << number
  end
  puts string
end

stringy(11)

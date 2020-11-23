puts "What is the bill total?"
bill = gets.chomp.to_f
puts "What is the tip percentage?"
perc = gets.chomp.to_f / 100

tip = (perc * bill)
total = (tip + bill)

puts "The tip is $#{'%.2f' % tip} "
puts "The total is $#{'%.2f' % total}"

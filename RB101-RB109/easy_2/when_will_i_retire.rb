cur_year = Time.now().year

puts "What is your age?"
cur_age = gets.chomp.to_i

puts "What age would you like to retire?"
ret_age = gets.chomp.to_i

years_left = ret_age - cur_age

puts "It's #{cur_year}. You will retire in #{cur_year + years_left}"
puts "You only have #{years_left} years of work to go!"

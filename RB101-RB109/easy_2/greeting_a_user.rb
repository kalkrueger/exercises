puts "What is your name?"
name = gets.chomp.downcase

if name.include? "!"
  puts "HELLO #{name.upcase} WHY ARE YOU SCREAMING?"
else
  puts "Hello #{name.capitalize}."
end

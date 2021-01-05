puts "Please type a word or multiple words:"
string = gets.chomp

char_count = string.split.join.length

puts "There are #{char_count} characters in '#{string}'"

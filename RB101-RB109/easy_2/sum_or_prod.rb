puts "Please enter an integer greater than 0"
int = gets.chomp.to_i

loop do
  puts "Enter 's' to compute the sum, 'p' to compute the product."
  ans = gets.chomp.downcase
  if ans == 's'
    puts (1..int).inject { |sum, num| sum + num}
    break
  elsif ans == 'p'
    puts (1..int).inject { |product, num| product * num}
    break
  else
    puts "That' not a valid input, try again."
  end
end

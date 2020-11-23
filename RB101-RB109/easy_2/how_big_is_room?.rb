def room_size
  puts "Enter the length of the room in meters:"
  length = gets.chomp.to_i
  puts "Enter the width of the room in meters:"
  width = gets.chomp.to_i
  (length * width)
end

sm = room_size.round(2)
sf = (sm * 10.7639).round(2)

puts "The area of the room is #{sm} square meters (#{sf} square feet)."

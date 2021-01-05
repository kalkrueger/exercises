# rotate number at index

def max_rotation(num)
  arr = num.to_s.chars
  arr.size.times do |i|
    arr << arr.delete_at(i)
  end
  arr.join.to_i
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845

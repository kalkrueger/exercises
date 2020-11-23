def sum(num)
  num.to_s.chars.map { |n| n.to_i  }.sum
end

p sum(123_456_789)

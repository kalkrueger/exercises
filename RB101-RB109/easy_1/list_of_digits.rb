def digit_list(num)
  arr = num.to_s.chars
  p arr.map { |n| n.to_i }
end

digit_list(123456)

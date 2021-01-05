def sequence(num)
  first = (num >= 1 ? 1 : num)
  second = (num < 1 ? 1 : num)
  p (first..second).to_a
end

sequence(5) == [1, 2, 3, 4, 5]
sequence(3) == [1, 2, 3]
sequence(0) == [1]

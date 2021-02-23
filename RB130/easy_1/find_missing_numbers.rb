def missing(arr)
  full = (arr.min..arr.max).to_a
  full.reject{|num| arr.include?(num)}
end

p missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
p missing([1, 2, 3, 4]) == []
p missing([1, 5]) == [2, 3, 4]
p missing([6]) == []

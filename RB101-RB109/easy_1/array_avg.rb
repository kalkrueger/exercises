def average(arr)
  total = arr.sum
  puts (total / arr.size).to_f
end

average([1, 6]) == 3
average([1, 5, 87, 45, 8, 8])
average([9, 47, 23, 95, 16, 52])

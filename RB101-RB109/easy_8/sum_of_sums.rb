def sum_of_sums(arr)
  sums = []
  arr.each_with_index do |_, i|
    sums << arr[0..i].sum
  end
  sums.sum
end

p sum_of_sums([3, 5, 2])
p sum_of_sums([1, 5, 7, 3])
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35

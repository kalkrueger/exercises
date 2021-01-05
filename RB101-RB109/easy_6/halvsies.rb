# get array size
  # if size is odd set first arr size to be array.size / 2 + 1

def halvsies(arr)
  arr1_size = (arr.size.to_f / 2).round(half: :up)
  arr1 = arr[0..(arr1_size - 1)]
  arr2 = arr[arr1_size..-1]
  [arr1, arr2]
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]

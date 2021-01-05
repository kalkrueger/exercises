def rotate_array(arr)
  first = arr[0]
  arr.dup.drop(1) << first
end

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]

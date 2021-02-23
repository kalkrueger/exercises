def zip(arr1, arr2)
  zipped_array = []
  arr1.size.times do |index|
    zipped_array << [arr1[index], arr2[index]]
  end
  zipped_array
end

p zip([1, 2, 3], [4, 5, 6]) == [[1, 4], [2, 5], [3, 6]]

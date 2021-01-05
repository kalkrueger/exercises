#input: 2 sorted arrays
#output: the arrays merged with their elements sorted

#action create new emptry array (will be the return)
#us an if statement to compare index 0 of both arrays and add the lesser to the return array
#add 1 to the index of the array which was added and loop
#use while loop to determine if new array is the size of the two arrays combined

def merge(arr1, arr2)
  merged_array = []
  a1_ind = 0
  a2_ind = 0
  while merged_array.size < (arr1.size + arr2.size)
    case
    when arr2[a2_ind] == nil || arr1[a1_ind] == nil
      merged_array << (arr1[a1_ind] == nil ? arr2[a2_ind] : arr1[a1_ind])
      arr1[a1_ind] == nil ? a2_ind += 1 : a1_ind += 1
    when arr1[a1_ind] < arr2[a2_ind]
      merged_array << arr1[a1_ind]
      a1_ind += 1
    when arr2[a2_ind] < arr1[a1_ind]
      merged_array << arr2[a2_ind]
      a2_ind += 1
    end
  end
  merged_array
end

p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]

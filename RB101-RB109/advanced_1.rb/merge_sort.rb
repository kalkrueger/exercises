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

def merge_sort(arr)
  working_array = arr.map { |element| [element] }
  loop do
    merged_array = []
    working_array.each_with_index do |ele, index|
      if index.even? && working_array[index+1] != nil
        merged_array << merge(ele, working_array[index+1])
      elsif index.even?
        merged_array << ele
      end
    end
    p  working_array = merged_array
    break if working_array[0].size == arr.size
  end
  working_array.flatten
end

p merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
p merge_sort([5, 3]) == [3, 5]
p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]

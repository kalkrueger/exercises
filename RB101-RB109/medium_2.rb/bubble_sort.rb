#input:array
#output:same array sorted

#action: iterate through array and comparing elements next to one another
  #if the first is greater than second, swap them


def bubble_sort!(arr)
  compare = nil
  until arr == compare
    compare = arr.dup
    arr.each_with_index do |element, index|
      if arr[index + 1] != nil && element > arr[index + 1]
        arr[index], arr[index+1] = arr[index + 1], arr[index]
      end
    end
  end
end

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array

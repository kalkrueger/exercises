# def oddities(arr)
#   new_arr = []
#   arr.each_with_index { |elm, ind| new_arr << elm if ind.even?}
#   new_arr
# end

# def oddities(arr)
#   new_arr = []
#   (arr.size).times { |i| new_arr << arr[i] if i.even?}
#   new_arr
# end

def oddities(arr)
  arr.select do |elm|
    arr.index(elm).even?
  end
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []

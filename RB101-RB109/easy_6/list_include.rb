# iterate through the array using include on the array

def include?(arr, el)
  arr.each do |n|
    return true if n == el
  end
  false
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false

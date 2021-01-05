# def running_total(arr)
#   total = 0
#   arr.map do |n|
#     total += n
#   end
# end

def running_total(arr)
  arr.each_with_object([]) do |num, arr|
    if arr.size == 0
      arr << num
    else
      arr << arr.last + num
    end
  end
end



p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20])
p running_total([3])
p running_total([]) == []

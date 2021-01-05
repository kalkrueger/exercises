# def multisum(num)
#   arr = (1..num).select do |n|
#           n % 3 == 0 || n % 5 == 0
#         end
#   arr.sum
# end

def multisum(num)
  (0..num).inject do |sum, n|
      if n % 3 == 0 || n % 5 == 0
        sum + n
      else
        sum + 0
      end
    end
end


p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168

#input: number
#output: square sums - squares summed
#action: compute

def sum_square_difference(num)
  sum_sq = (1..num).inject(:+)**2
  sq_sum = (1..num).inject { |ans, n| ans + (n**2) }
  sum_sq - sq_sum
end

p sum_square_difference(3) == 22
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150

#input: number
#output: first featured number greater than input

#detrime feature
 # is multiple of 7, number.odd?, numbers only occure once

def featured(num)
  start = num + 1
  until start % 7 == 0 && start.odd?
    start += 1
  end
  featured = start
  loop do
    if featured.to_s.chars.uniq.join.to_i == featured
      return featured
    end
    featured += 14
    break if featured >= 9_876_543_210
  end
  "There is no number that fulfills these requirements"
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987
p featured(9_999_999_999)

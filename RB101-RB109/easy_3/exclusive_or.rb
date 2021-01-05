# this method will only return true if exactly one argument passed to it is true

def xor? (arg1, arg2)
  return true if (arg1 && !arg2) || (arg2 && !arg1)
  false
end

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false

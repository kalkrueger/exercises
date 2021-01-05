DIGITS = ['0' ,'1', '2', '3', '4', '5', '6', '7', '8', '9']

def signed_integer_to_string(num)
  str = ''
  return DIGITS[0] if num == 0
  sign = num > 0 ? '+' : '-'
  num = num.abs
  while num > 0 do
    num, remainder = num.divmod(10)
    str.prepend(DIGITS[remainder])
  end
  str.prepend(sign)
end


p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'

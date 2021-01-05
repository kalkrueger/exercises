def string_to_integer(str)
  arr = []
  str.each_char { |char| arr << char.ord - 48  }
  num = 0
  place = str.size - 1
  arr.each do |n|
    num += n * (10 ** place)
    place -= 1
  end
  num
end

def string_to_signed_integer(str)
  mult = 1
  if str.start_with?('-')
    mult = -1
    str.delete!(str[0])
  elsif str.start_with?('+')
    str.delete!(str[0])
  end
  mult * string_to_integer(str)
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100

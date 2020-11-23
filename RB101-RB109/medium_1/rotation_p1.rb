def rotate_array(array)
  array.drop(1) << array[0]
end

def rotate_string(string)
  string_array = string.split
  rotate_array(string_array).join(' ')
end

def rotate_integer(int)
  int_array = int.to_s.chars
  rotate_array(int_array).join.to_i
end

x = [1, 2, 3, 4]
p rotate_array(x)

strng = "It's a nice day out"
p rotate_string(strng)

test_int = 123456
p rotate_integer(test_int)

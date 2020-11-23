def rotate_array(array)
  array.drop(1) << array[0]
end

def rotate_rightmost_digits(int, num)
    int_array = int.to_s.chars
    int_array[-num..-1] = rotate_array(int_array[-num..-1])
    int_array.join.to_i
end

x = 735291

p rotate_rightmost_digits(x, 4)

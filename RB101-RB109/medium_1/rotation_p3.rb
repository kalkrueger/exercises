require 'pry'
def rotate_array(array)
  array.drop(1) << array[0]
end

def rotate_rightmost_digits(int, num)
    int_array = int.to_s.chars
    int_array[-num..-1] = rotate_array(int_array[-num..-1])
    int_array.join.to_i
end

def max_rotation(int)
  times = int.to_s.size
  times.downto(2) do |n|
    int = rotate_rightmost_digits(int, n)
  end
  int
end

x = 735291

p max_rotation(x)

def max_2(int)
  int_array = int.to_s.chars
  len = int_array.size
  len.times do |n|
    num = int_array[n]
    int_array.delete_at(n)
    int_array << num
  end
  int_array.join.to_i
end

p max_2(x)

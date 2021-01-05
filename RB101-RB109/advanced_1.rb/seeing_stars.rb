#input: number
#output: star pattern w./ center equal to stars * input

def star(num)
  center = "*" * num
  star_up(num)
  puts center
  star_down(num)
end

def star_up(num)
  spaces = (num / 2) - 1
  spaces.downto(0) do |i|
    puts ("*#{' ' * i}*#{' ' * i}*").center(num)
  end
end

def star_down(num)
  spaces = (num / 2) - 1
  0.upto(spaces) do |i|
    puts ("*#{' ' * i}*#{' ' * i}*").center(num)
  end
end

star(21)

def print_lines(lines, n)
  lines.each do |i|
    line = "*"
    (i - 2).times do line << " " end
    if i > 1 then line << "*" end
    puts line.center(n)
  end
end

def diamond(n)
  up_lines = (1..n).select { |i| i.odd? }
  down_lines = up_lines.reverse.drop(1)
  print_lines(up_lines, n)
  print_lines(down_lines, n)
end

diamond(21)

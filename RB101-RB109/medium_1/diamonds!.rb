def diamond(n)
  printable_lines = (1..n).select { |n| n.odd? }
  split = [printable_lines, printable_lines.reverse.drop(1)]
  split.each do |lines|
    lines.each do |i|
      line = "*"
      line << (" " * (i-2)) + "*" if i > 1
      puts line.center(printable_lines.max)
    end
  end
end

diamond(21)

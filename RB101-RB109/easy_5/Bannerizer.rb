def top(len)
  puts '+' + ('-' * (len) + '+')
  puts '|'+ (' ' * (len) + '|')
end

def bottom(len)
  puts '|'+ (' ' * (len) + '|')
  puts '+' + ('-' * (len) + '+')
end

def text(str, lines)
  len = 0
  arr = str.split
  while !arr.empty?
    count = 0
    current_line = []
    remaining_words= []
    arr.each do |word|
      count += (word.length + 1)
      if count <= 78
        current_line << word
      else
        remaining_words << word
      end
    end
    arr = remaining_words
    line = current_line.join(' ')
    len = line.length + 2 if line.length + 2 > len
    lines << line
  end
  space_lines(lines, len)
  len
end

def space_lines(lines, len)
  lines.each do |line|
    text_length = line.length
    buffer = (len - text_length) / 2
    backbuff = (len.odd? == text_length.odd?) ? buffer : buffer + 1
    line.prepend('|' + (' ' * buffer))
    line << (' ' * backbuff) + '|'
  end
end

def print_in_box(str)
  text_lines = []
  len = text(str, text_lines)
  top(len)
  puts text_lines
  bottom(len)
end

print_in_box("aaprint this string in a box print this string in a box print this string in a box print this string in a box print this string in a box print this string in a box print this string in a box")

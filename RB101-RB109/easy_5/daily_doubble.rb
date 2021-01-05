#iterate through string and delete if it is equal to the char before

def crunch(str)
  new_str = ''
  str.length.times do |index|
    new_str << str[index] if str[index] != new_str[- 1]
  end
  new_str
end


p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''

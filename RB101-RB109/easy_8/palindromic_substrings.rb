#get size of string and iterate through that many times
# => check reverses of each case, add true to new string

def palindromes(str)
  pals = []
  str.size.times do |index_1|
    index_1.upto(str.size - 2) do |index_2|
      if  str[index_1..(index_2 + 1)] == str[index_1..(index_2 + 1)].reverse
        pals << str[index_1..(index_2 + 1)]
      end
    end
  end
  pals
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]

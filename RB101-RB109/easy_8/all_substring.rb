# take index 0 - end
  # take index 1 - end ...


def substrings(str)
  substrs = []
  str.size.times do |index_1|
    index_1.upto(str.size - 1) do |index_2|
      substrs << str[index_1..index_2]
    end
  end
  substrs
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]

NUMS = {
  'zero' => '0',
  'one' => '1',
  'two' => '2',
  'three' => '3',
  'four' => '4',
  'five' => '5',
  'six' => '6',
  'seven' => '7',
  'eight' => '8',
  'nine' => '9'
}

def num_to_digit(str)
  NUMS.keys.each do |word|
    str.gsub!(/\b#{word}\b/, NUMS[word])
  end
  puts str
end

num_to_digit('Please call me at five five five one two three four. Thanks.')

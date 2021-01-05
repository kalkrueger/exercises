#Input: string of words
#Output: string with number words converted into numbers in string form

#action: string to array, if word is a number switch it out

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

def word_to_digit(str)
  NUMS.keys.each do |number|
    str.gsub!(/\b#{number}\b/i, NUMS[number])
  end
  str
end

p word_to_digit('Please call me at Five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

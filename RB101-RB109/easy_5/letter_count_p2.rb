#split words
  #get word counts - unique
  #count repetitions and assign to word count

def word_sizes(str)
  str.delete!("^A-z","^ ")
  hsh = Hash.new(0)
  str.split.each do |word|
    hsh[word.length] += 1
  end
  hsh
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}

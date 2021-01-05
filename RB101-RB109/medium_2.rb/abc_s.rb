BLOCKS = %w(B:O   X:K   D:Q   C:P   N:A
G:T   R:E   F:S   J:W   H:U
V:I   L:Y   Z:M)

def block_word?(word)
  BLOCKS.each do |block|
    letters = block.split(':').join
    return false if word.count(letters) > 1
  end
  true
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true

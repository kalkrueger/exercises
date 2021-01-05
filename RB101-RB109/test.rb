#input: string
#return: hash where uniq letters in string are keys as symbols and count is value

#action: create new hash and iterate through string counting uniq chars

def letter_count(string)
  string.chars.uniq.sort.each_with_object(Hash.new(0)) do |letter, hash|
    hash[letter.to_sym] = string.count(letter)
  end
end

p letter_count('arithmetics') ==  {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}

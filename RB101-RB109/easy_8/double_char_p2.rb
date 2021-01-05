def double_consonants(str)
  repeated = ""
  str.each_char do |chr|
    repeated << if chr =~ /[A-z&&[^aeiou]]/
                  chr * 2
                else
                  chr
                end
  end
  repeated
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""

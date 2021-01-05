def repeater(str)
  repeated = ""
  str.each_char { |chr| repeated << (chr * 2)  }
  repeated
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''

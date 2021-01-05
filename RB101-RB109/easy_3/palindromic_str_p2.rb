def palindrome?(str)
  str.downcase!
  str.delete!('^a-z0-9')
  str == str.reverse
end

p palindrome?('madam') == true
p palindrome?('Madam') == true      # (case matters)
p palindrome?("madam i'm adam") == true # (all characters matter)
p palindrome?('356653') == true

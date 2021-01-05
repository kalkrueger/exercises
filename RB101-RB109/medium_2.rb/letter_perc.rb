#input: string
#Output: hash with w/ lowercase, uppercase, and neither as keys and the perecentage of the string that they make up as values

#action: run count on string for each case and divide by the string length

def letter_percentages(string)
  results = {}
  results[:lowercase] = percentage(string, 'a-z')
  results[:uppercase] = percentage(string, 'A-Z')
  results[:neither] = percentage(string, '^A-z')
  results
end

def percentage(string, param)
  ((string.count(param).to_f / string.size) * 100).round(2)
end


p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('abcdefGHI')

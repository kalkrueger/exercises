#input string
#output are the parentheses matching? boolean

#action: string to array .select parentheses


def balanced?(string)
  parentheses = string.chars.select { |char| char.count('()') > 0}
  return false if parentheses[0] == ')'
  parentheses.each_with_index do |obj, index|
    return false if obj == parentheses.reverse[index]
  end
  true
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
balanced?('What ((is))) up(') == false

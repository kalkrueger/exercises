def staggered_case(str)
  staggered = ""
  counter = 0
  str.chars.each do |char, i|
    if char =~ /[^A-z]/
      staggered << char
    else
      staggered << (counter.even? ? char.upcase : char.downcase)
      counter += 1
    end
  end
  staggered
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

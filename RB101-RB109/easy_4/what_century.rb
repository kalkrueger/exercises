# take century as argument
  # if divisable by 100 div by 100
  # else add 1 and div by 100
# evaluate the num and assign the correct suffix

def century(year)
  if year % 100 == 0
    cen = year / 100
  else
    cen = (year / 100) + 1
  end
  if (cen % 100).between?(11, 13)
    suff = "th"
  else
    suff = case cen % 10
           when 1 then "st"
           when 2 then "nd"
           when 3 then "rd"
           else "th"
           end
  end
  cen.to_s + suff
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'

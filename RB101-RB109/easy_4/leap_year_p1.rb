#is year divisible by 4
  #is year dvisible by 100
    #is year divisible by 400

def gregorian(year)
  return false if year % 4 != 0
  if year % 100 == 0
    year % 400 == 0
  else
    true
  end
end

def leap_year?(year)
  if year >= 1752
    gregorian(year)
  else
    year % 4 == 0
  end
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == true
p leap_year?(1) == false
p leap_year?(100) == true
p leap_year?(400) == true

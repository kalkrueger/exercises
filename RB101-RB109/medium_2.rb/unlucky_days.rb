#input: year
#output: number of friday the 13ths in that year

#action: iterate through months checking to see if the 13th was a friday and adding to total

def friday_13th(year)
  month = 0
  friday_13ths = 0
  12.times do
    month += 1
    friday_13ths += 1 if Time.gm(year, month, 13).friday?
  end
  friday_13ths
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2

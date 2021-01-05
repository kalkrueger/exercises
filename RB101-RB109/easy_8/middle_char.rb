def center_of(str)
  center = ((str.size - 1) / 2)
  if str.size.odd?
    str[center]
  else
    str[center, 2]
  end
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'

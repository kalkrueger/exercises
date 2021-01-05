#input: length of 3 sides of a triangle
#output: type of triangle or invalide

#action: sides to arr .sort
  # make sure the first  side isn't 0 and that the sum of the first 2 sides are longer than the third
  #determine the type of triangle

def triangle(num1, num2, num3)
  side1, side2, side3 = [num1, num2, num3].sort
  return :invalid if side1 == 0 || side1 + side2 <= side3
  if side1 == side2 && side2 == side3
    :equilateral
  elsif side1 == side2 || side2 == side3
    :isosceles
  else
    :scalene
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid

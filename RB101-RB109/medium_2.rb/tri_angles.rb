#input 3 angles
#output type of triangle

#action: test the angles to determine if they are a valid triangle and if so the type

def triangle(angle1, angle2, angle3)
  angles = [angle1, angle2, angle3]
  case
  when angles.any? { |angle| angle <= 0 } || angles.sum != 180
    :invalid
  when angles.any? { |angle| angle == 90 }
    :right
  when angles.all? { |angle| angle < 90}
    :acute
  else
    :obtuse
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid

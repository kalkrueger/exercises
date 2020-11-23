def calculate_bonus(salary, t_f = true)
  t_f ? (salary / 2) : 0
end

puts calculate_bonus(2000, true)

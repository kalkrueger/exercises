def step(start, stop, step)
  num = start
  until num > stop
    yield num
    num += step
  end
end

step(1, 10, 3) { |value| puts "value = #{value}" }

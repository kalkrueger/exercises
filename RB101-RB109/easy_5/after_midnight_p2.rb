def after_midnight(time)
  arr = time.split(':').map(&:to_i)
  arr[0] *= 60
  arr.sum % 1440
end

def before_midnight(time)
  arr = time.split(':').map(&:to_i)
  arr[0] *= 60
  (1440 - arr.sum) % 1440
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0

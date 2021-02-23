def group(arr)
  yield arr
end

birds = %w(raven finch hawk eagle)

group(birds) { |_, _, *raps| puts "Raptors: #{raps.join(', ')}"}

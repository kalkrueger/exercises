vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(arr)
  arr.uniq.map { |w| puts "#{w} => #{arr.count(w)}"}
end

count_occurrences(vehicles)

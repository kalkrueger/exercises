def buy_fruit(arr)
  list = []
  arr.each do |fruit|
    fruit[-1].times { list << fruit[0] }
  end
  list
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]

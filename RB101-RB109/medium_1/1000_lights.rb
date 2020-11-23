def lights(n)
  arr = (1..n).to_a
  iterate(n, arr)
  arr.sort
  print_results(arr, n)
end

def iterate(n, arr)
  (2..n).each do |i|
    toggle(i, arr, n)
  end
end

def toggle(i, arr, n)
  switchnum = i
  until switchnum > n
    arr.include?(switchnum) ? arr.delete(switchnum) : arr << switchnum
    switchnum += i
  end
end

def off_arr(arr, n)
  off_arr = []
  (2..n).each do |i|
    if !arr.include?(i) then off_arr << i end
  end
  off_arr
end

def print_results(arr, n)
  off_lights =
    "Lights #{off_arr(arr, n)[0..-2].join(', ')}, and #{off_arr(arr, n)[-1]} are now off;"
  on_lights =
    " #{arr[0..-2].join(', ')}, and #{arr[-1]} are on."
  print off_lights + on_lights
end

lights(5)

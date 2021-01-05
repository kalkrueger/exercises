def greetings(arr, hsh)
  name = arr.join(' ')
  title = hsh.values.join(' ')
  puts "Hello, #{name}! Nice to have a #{title} around"
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })

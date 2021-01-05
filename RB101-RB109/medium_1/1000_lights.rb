#input: take input that equals number of lights and number of iterations
#output: array of 'on' numbers

#create hash with number 1..n as keys and 'on' as values
#iterate through hash swithching the multiples of the current numbers

def light_switch(num)
  lights = []
  num.times {lights << 'off'}
  num.times do |light|
    light += 1
    lights.each_with_index do |status, index|
      if (index + 1) % light == 0
        lights[index] = (status == 'on') ? 'off' : 'on'
      end
    end
  end
  on_lights, off_lights = (1..num).partition { |light| lights[light-1] == 'on'}
  p on_lights
  p off_lights
end

light_switch(1000)

def minilang(str = " ")
  stack = []
  register = 0
  str.split.each do |command|
    if command.to_i.to_s == command
      register = command.to_i
    else
      case command
      when 'PRINT'
        puts register
      when 'PUSH'
        stack.push(register)
      when 'POP'
        register = stack.pop
      when 'ADD'
        register += stack.pop
      when 'SUB'
        register -= stack.pop
      when 'MULT'
        register *= stack.pop
      when 'DIV'
        register /= stack.pop
      when 'MOD'
        register %= stack.pop
      else
        error(command)
      end
    end
  end
end

def error(input)
  message = if input == " "
    "The command line is empty"
  else
    "#{input} is not a valid command!"
  end
  puts "ERROR! #{message}"
end

minilang('5 PRINT PUSH MULT PRINT PUSH 25 DIV 3 MOD PRINT')

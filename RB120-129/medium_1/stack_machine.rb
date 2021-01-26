class MinilangError < StandardError; end
class InvalidCommandError < MinilangError; end
class EmptyStackError < MinilangError; end


class Minilang
  attr_reader :commands
  ACTIONS = %w(PUSH ADD SUB MULT DIV MOD POP PRINT)

  def initialize(commands)
    @commands = commands.split.map { |command| convert_integers(command)}
  end

  def convert_integers(command)
    return command.to_i if command.to_i.to_s == command
    command
  end

  def eval
    @register = 0
    @stack = []
    eval_commands
  end

  def eval_commands
    @commands.each do |command|
      if ACTIONS.include? command
        send(command.downcase)
      elsif command.is_a?(Integer)
        @register = command
      else
        raise InvalidCommandError, "Invalid command: #{command}"
      end
    end
  end

  def print
    puts @register
  end

  def push
    @stack.push(@register)
  end

  def add
    @register += pop
  end

  def sub
    @register -= pop
  end

  def mult
    @register *= pop
  end

  def div
    @register /= pop
  end

  def mod
    @register %= pop
  end

  def pop
    raise EmptyStackError, "Empty Stack" if @stack.empty?
    @register = @stack.shift
  end
end

Minilang.new('PRINT').eval
# 0

Minilang.new('5 PUSH 3 MULT PRINT').eval
# 15

Minilang.new('5 PRINT PUSH 3 PRINT ADD PRINT').eval
# 5
# 3
# 8

Minilang.new('5 PUSH 10 PRINT POP PRINT').eval
# 10
# 5

#Minilang.new('5 PUSH POP POP PRINT').eval
# Empty stack!

Minilang.new('3 PUSH PUSH 7 DIV MULT PRINT ').eval
# 6

Minilang.new('4 PUSH PUSH 7 MOD MULT PRINT ').eval
# 12

#Minilang.new('-3 PUSH 5 XSUB PRINT').eval
# Invalid token: XSUB

Minilang.new('-3 PUSH 5 SUB PRINT').eval
# 8

Minilang.new('6 PUSH').eval
# (nothing printed; no PRINT commands)

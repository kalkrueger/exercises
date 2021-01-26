class GuessingGame
  RANGE = (1..100)

  def initialize
    @remaining_guesses = 7
    @number =  RANGE.to_a.sample
  end

  def play
    system 'clear'
    until @remaining_guesses == 0
      display_remaining_guesses
      collect_guess
      evaluate_guess
      break if @guess == @number
    end
    display_win_or_loss
  end

  def display_remaining_guesses
    puts ''
    puts "You have #{@remaining_guesses} guesses remaining!"
  end

  def collect_guess
    loop do
      puts "Enter a number between 1 and 100:"
      @guess = gets.chomp.to_i
      break if  RANGE.include? @guess
      puts "Invalide Guess."
    end
    @remaining_guesses -= 1
  end

  def evaluate_guess
    case @guess <=> @number
    when 1
      puts "Your guess is too high!"
    when -1
      puts "Your guess is too low!"
    when 0
      puts "Thats the number!!"
    end
  end

  def display_win_or_loss
    puts ''
    if @number != @guess
      puts "You have no more guesses. You lost!"
    else
      puts "You won!!"
    end
  end
end

game = GuessingGame.new
game.play

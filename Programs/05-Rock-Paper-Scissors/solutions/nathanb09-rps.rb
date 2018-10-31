class RockPaperScissors

  def initialize
    @players_turns = []
    #[Player, Computer, Draw]
    @score = [0, 0, 0]
  end

  WIN_COMBONATIONS = [
    ["rock", "scissors"],
    ["scissors", "paper"],
    ["paper", "rock"]
  ]

  def player_turn
    puts "Enter your choice: 'Rock', 'Paper' or 'Scissors':"
    @p_turn = gets.strip.downcase
  end

  def computer_turn
    @c_turn = ["rock", "paper", "scissors"].sample
    if most_frequent == nil
      puts "The computer chose #{@c_turn}. Random"
    else
      WIN_COMBONATIONS.each do |combo|
        if combo[1] == most_frequent
          @c_turn = combo.sample
        end
      end
      puts "The computer chose #{@c_turn}."
    end
  end

  #returns most frequent player choice
  def most_frequent
    rock = @players_turns.count("rock")
    paper = @players_turns.count("paper")
    scissors = @players_turns.count("scissors")
    randomness = 5 #Affects how long the computer takes to make its choices less random

    if rock > randomness || paper > randomness || scissors > randomness
      if rock > paper && rock > scissors
        return "rock"
      elsif paper > rock && paper > scissors
        return "paper"
      elsif scissors > rock && scissors > paper
        return "scissors"
      end
    end
  end

  def won?
    WIN_COMBONATIONS.find do |combo|
      if @p_turn == combo[0] && @c_turn == combo[1]
        return "Player"
      elsif @c_turn == combo[0] && @p_turn == combo[1]
        return "Computer"
      else
        false
      end
    end
  end

  def draw?
    @p_turn == @c_turn
  end

  def play
    player_turn
    computer_turn
    @players_turns << @p_turn
    if won?
      puts "#{won?} has won the game!"
      won? == "Player" ? @score[0] += 1 : @score[1] += 1
    elsif draw?
      puts "The game was a draw."
      @score[2] += 1
    end
    print "Score: #{@score}"
    puts "\n\nWould you like to play again? y/n:"
    again = gets.strip.downcase
    again == "y" ? play : nil
  end
end

rps = RockPaperScissors.new
rps.play

class String
  define_method(:rockps) do |player2|
    # Player 1 = Rock
    if self == "rock" && player2 == ""
      output = "Player 1 Wins!"
    elsif self == "rock" && player2 == "scissors"
      output = "Player 1 Wins!"
    elsif self == "rock" && player2 == "rock"
      output = "Draw!"
    elsif self == "rock" && player2 == "paper"
      output = "Player 2 Wins!"
    end

    # Player 1 = Paper
    if self == "paper" && player2 == ""
        output = "Player 1 Wins!"
    elsif self == "paper" && player2 == "paper"
      output = "Draw!"
    elsif self == "paper" && player2 == "rock"
      output = "Player 1 Wins!"
    elsif self == "paper" && player2 == "scissors"
      output = "Player 2 Wins!"
    end

    # Player 1 = Scissors
    if self == "scissors" && player2 == ""
        output = "Player 1 Wins!"
    elsif self == "scissors" && player2 == "scissors"
      output = "Draw!"
    elsif self == "scissors" && player2 == "paper"
        output = "Player 1 Wins!"
    elsif self == "scissors" && player2 == "rock"
        output = "Player 2 Wins!"
    end
    output
  end
end

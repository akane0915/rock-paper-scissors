class String
  define_method(:rockps) do |player2|
    if self == "rock" && player2 == ""
      output = "Player 1 Wins!"
    elsif self == "rock" && player2 == "scissors"
      output = "Player 1 Wins!"
    elsif self == "rock" && player2 == "rock"
      output = "Draw!"



    elsif self == "paper" && player2 == ""
        output = "Player 1 Wins!"
    elsif self == "paper" && player2 == "paper"
      output = "Draw!"


    elsif self == "scissors" && player2 == ""
        output = "Player 1 Wins!"
    elsif self == "scissors" && player2 == "scissors"
      output = "Draw!"
    end
    output
  end
end

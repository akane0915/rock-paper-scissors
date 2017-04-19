class String
  define_method(:rock) do
    # Player 1 = Rock
    if self == ""
      output = "Player 1 Wins!"
    elsif self == "scissors"
      output = "Player 1 Wins!"
    elsif self == "rock"
      output = "Draw!"
    elsif self == "paper"
      output = "Player 2 Wins!"
    end
    output
  end
end

class String
  define_method(:paper) do
    # Player 1 = Paper
    if self == ""
        output = "Player 1 Wins!"
    elsif self == "paper"
      output = "Draw!"
    elsif self == "rock"
      output = "Player 1 Wins!"
    elsif self == "scissors"
      output = "Player 2 Wins!"
    end
    output
  end
end

class String
  define_method(:scissors) do
    # Player 1 = Scissors
    if self == ""
        output = "Player 1 Wins!"
    elsif self == "scissors"
      output = "Draw!"
    elsif self == "paper"
        output = "Player 1 Wins!"
    elsif self == "rock"
        output = "Player 2 Wins!"
    end
  end
end

class String
  define_method(:rps) do |player2|
    if self == "rock"
      output = player2.rock()
    elsif self == "paper"
      output = player2.paper()
    elsif self == "scissors"
      output = player2.scissors()
    elsif self == "" && (player2 == "rock" || player2 == "paper" || player2 == "scissors")
      output = "Player 2 Wins!"
    else
      output = "Draw!"
    end
    output
  end
end

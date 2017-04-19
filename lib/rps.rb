class String
  define_method(:rockps) do |player2|
    if self == "rock" && player2 == ""
      output = "Player 1 Wins!"
    elsif self == "rock" && player2 == "rock"
      output = "Draw!"
    end
    output
  end
end

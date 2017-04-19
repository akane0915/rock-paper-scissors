class String
  define_method(:rockps) do
    if self == "rock"
      output = "Player 1 Wins!"
    end
    output
  end
end

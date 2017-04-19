require('rspec')
require('rps')
require('pry')

describe("String#rockps") do
  it("takes player 1 input as rock and no input from player two returns the outcome player 1 wins") do
    expect('rock'.rockps('')).to(eq('Player 1 Wins!'))
  end

  it("takes player 1 input as paper and no input from player two and returns the outcome player 1 wins") do
    expect('paper'.rockps('')).to(eq('Player 1 Wins!'))
  end

  it("takes both user inputs as rock and returns a draw") do
    expect('rock'.rockps('rock')).to(eq('Draw!'))
  end

  it("takes both user inputs as scissors and returns a draw") do
    expect('scissors'.rockps('scissors')).to(eq('Draw!'))
  end

  it("takes player 1's input as rock and returns a win for player 1 provided player 2 is scissors") do
    expect('rock'.rockps('scissors')).to(eq('Player 1 Wins!'))
  end

  it("takes player 1's input as rock and returns a win for player 2 provided player 2 is paper") do
    expect('rock'.rockps('paper')).to(eq('Player 2 Wins!'))
  end

  it("takes player 1's input as paper and returns a win for player 1 provided player 2 is rock") do
    expect('paper'.rockps('rock')).to(eq('Player 1 Wins!'))
  end

  it("takes player 1's input as paper and returns a win for player 2 provided player 2 is scissors") do
    expect('paper'.rockps('scissors')).to(eq('Player 2 Wins!'))
  end

end

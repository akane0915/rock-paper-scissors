require('rspec')
require('rps')
require('pry')

describe("String#rps") do
  it("takes player 1 input as rock and no input from player two returns the outcome player 1 wins") do
    expect('rock'.rps('')).to(eq('Player 1 Wins!'))
  end

  it("takes player 1 input as paper and no input from player two and returns the outcome player 1 wins") do
    expect('paper'.rps('')).to(eq('Player 1 Wins!'))
  end

  it("takes both user inputs as rock and returns a draw") do
    expect('rock'.rps('rock')).to(eq('Draw!'))
  end

  it("takes both user inputs as scissors and returns a draw") do
    expect('scissors'.rps('scissors')).to(eq('Draw!'))
  end

  it("takes player 1's input as rock and returns a win for player 1 provided player 2 is scissors") do
    expect('rock'.rps('scissors')).to(eq('Player 1 Wins!'))
  end

  it("takes player 1's input as rock and returns a win for player 2 provided player 2 is paper") do
    expect('rock'.rps('paper')).to(eq('Player 2 Wins!'))
  end

  it("takes player 1's input as paper and returns a win for player 1 provided player 2 is rock") do
    expect('paper'.rps('rock')).to(eq('Player 1 Wins!'))
  end

  it("takes player 1's input as paper and returns a win for player 2 provided player 2 is scissors") do
    expect('paper'.rps('scissors')).to(eq('Player 2 Wins!'))
  end

  it("takes player 1's input as scissors and returns a win for player 1 provided player 2 is paper") do
    expect('scissors'.rps('paper')).to(eq('Player 1 Wins!'))
  end

  it("takes player 1's input as scissors and returns a win for player 2 provided player 2 is rock") do
    expect('scissors'.rps('rock')).to(eq('Player 2 Wins!'))
  end

  it("takes player 1's input as nothing and returns a win for player 2 provided player 2 is anything") do
    expect(''.rps('rock')).to(eq('Player 2 Wins!'))
  end
  it("if neither player inputs anything the outcome is a draw") do
    expect(''.rps('')).to(eq('Draw!'))
  end
end

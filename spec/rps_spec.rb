require('rspec')
require('rps')
require('pry')

describe("String#rockps") do
  it("takes player 1 input and returns the outcome player 1 wins") do
    expect('rock'.rockps()).to(eq('Player 1 Wins!'))
  end
end

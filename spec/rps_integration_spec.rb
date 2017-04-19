require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('The rock, paper, scissors path', {:type => :feature}) do
  it('Processes two user inputs and returns the winner or draw conditions.') do
    visit('/')
    fill_in('player1', :with => 'rock')
    fill_in('player2', :with => 'scissors')
    click_button("Let's Play!")
    expect(page).to have_content('Player 1 Wins!')
  end
end

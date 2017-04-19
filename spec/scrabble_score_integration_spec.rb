require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

 describe('the scrabble score path'), {:type => :feature}) do
  it('processes the user word and returns the scrabble point equivalent') do
    visit('/')
    fill_in('word', :with => 'walnut')
    click_button('score word')
    expect(page).to have_content('9')
  end
 end

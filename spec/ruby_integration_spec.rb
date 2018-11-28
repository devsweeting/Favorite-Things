require ('rspec')
require ('capybara/rspec')
require ('pry')
require ('./app')
require ('capybara')
require ('./lib/Riddle')

describe('the sphinx riddle', {:type => :feature}) do
  testriddle = Riddle.new
  it('checks user answer with provided riddle') do
    visit('/')
    fill_in('user_answer', :with => '5')
    click_button('Submit answer')
    expect(page).to have_content('Nope, wrong, you suck!')
  end

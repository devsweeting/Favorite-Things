require ('rspec')
require ('capybara/rspec')
require ('pry')
require ('./app')
require ('capybara')
require ('./lib/Favorite')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the favorite list', {:type => :feature}) do
  it('adds to favorite list') do
    visit('/')
    fill_in('name', :with => 'tacos')
    click_button('Add to list')
    expect(page).to have_content('tacos')
  end
end

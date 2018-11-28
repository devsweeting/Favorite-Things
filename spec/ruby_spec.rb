require ('rspec')
require ('pry')
require ('Favorites')


describe('Favorites') do 

  it('tests a method for Favorites') do

    dummy = Favorites.new()

    expect(dummy.method()).to(eq(expected result))

  end

end


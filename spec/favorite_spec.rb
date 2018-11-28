require ('rspec')
require ('pry')
require ('Favorite')

describe("Favorite") do
  before() do
    Favorite.clear()
  end

  describe('#save') do
    it('tests a method for adding to favorites list') do
      dummy = Favorite.new("tortas")
      dummy.save()
      expect(Favorite.all()).to(eq([dummy]))
    end
  end

  describe('.clear') do
    it('clears all items from list') do
      dummy = Favorite.new("tortas")
      dummy.save()
      Favorite.clear()
      expect(Favorite.all()).to(eq([]))
    end
  end

  describe(".find") do
    it("finds a list item based on its id") do
      item = Favorite.new("tacos")
      item.save()
      item2 = Favorite.new("pizza")
      item2.save()
      expect(Favorite.find(1)).to(eq(item))
      expect(Favorite.find(2)).to(eq(item2))
    end
  end


end

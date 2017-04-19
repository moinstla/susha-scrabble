require('rspec')
require('scrabble_score')
require('pry')

describe('String#scrabble') do

  #it("adds the letter value to an array") do
    #expect(("daze").scrabble()).to(eq([2, 1, 10, 1]))
  #end

  it("totals the values in the array") do
    expect(("daze").scrabble()).to(eq(14))
  end
end

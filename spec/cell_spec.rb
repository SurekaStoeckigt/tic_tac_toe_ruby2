require "spec_helper"
require "./lib/cell.rb"

module TicTacToe
RSpec.describe Cell do

  it "each cell is initialized with a nil value" do
    cell = Cell.new
    expect(cell.value).to eq(nil)
  end

  it "does something useful" do
    cell = Cell.new('X')
    expect(cell.value).to eq('X')
  end
end

end

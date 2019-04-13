require "spec_helper"
require "./lib/board.rb"

module TicTacToe
RSpec.describe Board do

context "#initialize" do

  it "initializes the board with a grid" do
    expect{ Board.new(grid: "grid")}.to_not raise_error
  end

  #The tests should not focus too much on the data structure, and should focus on the behaviour of the class instead
  it 'each board is initialized with a grid that consists of 3 properties' do
    board = Board.new
    expect(board.grid.size).to eq(3)
  end

  it 'each board is initialized with a grid with three rows, and each row has 3 things' do
    board = Board.new
    board.grid.each do |row|
      expect(row.size).to eq(3)
    end
  end

context "#grid" do

  it "the board can return the grid instance variable properly" do
    board = Board.new(grid: "TestGrid")
    expect(board.grid).to eq("TestGrid")
  end

end

context "#cell" do

  it "can return a specific cell based on x and y coordinates" do
    grid = [["", "", ""], ["", "test", ""], ["", "", ""]]
    board = Board.new(grid: grid)
    expect(board.get_cell(1,1)).to eq("test")
  end

end
end
end
end

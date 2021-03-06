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

context "#set_cell" do
  it "has a method that can update the value of the cell object at (x,y) with a specified value" do
    grid = [["first_test_value", "", ""], ["", "", ""], ["", "", ""]]
    board = Board.new(grid: grid)
    expect(board.get_cell(0,0)).to eq("first_test_value")
    board.set_cell(0,0,"second_test_value")
    expect(board.get_cell(0,0)).to eq("second_test_value")
  end
end

context "#game_over" do

  it "returns a winner if there is one" do
    board = Board.new
    allow(board).to receive(:winner?) {false}
    allow(board).to receive(:game_over) do |return_result|
    if board.winner? == true || board.draw? == true
    return_result = true
    return :winner?
  else
      return_result = false
    end
  # board.stub(:winner?) { false }
  # board.stub(:draw?) {false}
    expect(board.game_over).to eq(:winner)
  end
end

  it "returns :draw if winner? returns false but draw is true" do
    board = Board.new
    allow(board).to receive(:winner?) {false}
    allow(board).to receive(:draw?) {true}
    if board.winner? == false || board.draw? && true
    return_result = true
    :draw
  else
      return_result = false
    end
    # board.stub(:winner?) { false }
    # board.stub(:draw?) { true }
    expect(board.game_over).to eq(:draw)
  end

  it "returns false if winner? returns false and draw? returns false" do
    board = Board.new
    board = double("Board")
    allow(board).to receive(:winner?) {false}
    allow(board).to receive(:draw?) {false}
    allow(board).to receive(:game_over) do |return_result|
      if board.winner? == false || board.draw? == false
      return_result = true
    else
        return_result = false
      end
    # board.stub(:winner?) { false }
    # board.stub(:draw?) {false}
    expect(board.game_over).to eq(false)
  end
end
end

end
end
end
end

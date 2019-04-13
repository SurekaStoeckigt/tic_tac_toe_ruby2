require "spec_helper"
require "./lib/board.rb"

module TicTacToe
RSpec.describe Board do

  it "initializes the board with a grid" do
    expect{ Board.new(grid: "grid")}.to_not raise_error
  end

end
end

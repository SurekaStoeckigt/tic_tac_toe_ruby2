require "spec_helper"
require "./lib/player.rb"

module TicTacToe

  RSpec.describe Player do

    it "raises an error if the player is not initialized with a name" do
      input = {symbol: "X", name: "Test" }
      expect{ Player.new(input)}.to_not raise_error
    end

  end
end

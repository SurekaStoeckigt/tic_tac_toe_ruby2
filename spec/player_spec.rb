require "spec_helper"
require "./lib/player.rb"

module TicTacToe

  RSpec.describe Player do

    it "does not raise error if the player is initialized with a Name and Symbol" do
      input = {symbol: "X", name: "Test" }
      expect{ Player.new(input)}.to_not raise_error
    end

    it "returns the symbol of the player" do
      input = {symbol: "X", name: "Test" }
      player = Player.new(input)
      expect(player.symbol).to eq('X')
    end

    it "returns the name of the player" do
      input = {symbol: "X", name: "TestPlayer" }
      player = Player.new(input)
      expect(player.name).to eq('TestPlayer')
    end

  end
end

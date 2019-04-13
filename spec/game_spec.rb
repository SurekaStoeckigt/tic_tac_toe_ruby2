require "spec_helper"
require "./lib/game.rb"

module TicTacToe
  RSpec.describe Game do
    let(:player_1) { Player.new(symbol: "X", name: "player_1")}
    let(:player_2) { Player.new(symbol: "O", name: "player_2")}

    context "#initialize" do

      it "randomly selects a current_player" do
        allow_any_instance_of(Array).to receive(:shuffle) { [player_1, player_2]}
        game = Game.new([player_2, player_1])
        expect(game.current_player).to eq(player_1)
      end

      it "randomly selects an other player" do
        allow_any_instance_of(Array).to receive(:shuffle) { [player_1, player_2]}
        game = Game.new([player_2, player_1])
        expect(game.other_player).to eq(player_2)
      end
    end

    context "#switch_players" do

      it "changes current player to other player" do
        game = Game.new([player_1, player_2])
        other_player = game.other_player
        game.switch_players
        expect(game.current_player).to eq(other_player)
      end

      it "changes other player to current player" do
        game = Game.new([player_1, player_2])
        current_player = game.current_player
        game.switch_players
        expect(game.other_player).to eq(current_player)
      end

    end

  end
end

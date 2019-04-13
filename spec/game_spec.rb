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

  context "#solicit_move" do

  it "asks the current player to make a move" do
    game = Game.new([player_1, player_2])
    allow(game).to receive(:current_player) { player_1 }
    expect(game.solicit_move).to eq("player_1: Enter a symbol and a number between 1 and 9")
  end

  it "displays the correct message" do
    game = Game.new([player_1, player_2])
    allow(game).to receive(:current_player) { player_2 }
    expect(game.solicit_move).to eq("player_2: Enter a symbol and a number between 1 and 9")
  end
end

  context "#get_move" do

    it "maps a number 1 to location (0,0)" do
      game = Game.new([player_1, player_2])
      expect(game.get_move("1")).to eq([0,0])
    end

    it "maps a number 7 to location (0,2)" do
      game = Game.new([player_1, player_2])
      expect(game.get_move("7")).to eq([0,2])
    end

    it "should receive move_to_coordinate method" do
      game = Game.new([player_1, player_2])
      expect(game).to receive(:move_to_coordinate)
      game.get_move("1")
    end
  end

  context "#game_over_message" do

    it "returns the correct message if there is a winner" do
      game = Game.new([player_1, player_2])
      allow(game).to receive(:current_player) { player_1 }
      allow(game.board).to receive(:game_over) { :winner }
      expect(game.game_over_message).to eq("player_1 won!")
    end

    it "returns the correct message if the game ends in a draw" do
      game = Game.new([player_1, player_2])
      allow(game).to receive(:current_player) { player_1 }
      allow(game.board).to receive(:game_over) { :draw}
      expect(game.game_over_message).to eq("The game ended in a draw!")
    end
  end

  end
end

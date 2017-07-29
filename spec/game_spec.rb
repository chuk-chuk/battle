require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player }
  let(:player_2) { double :player }

  context "player_1" do
    it "retrieves the first player" do
      expect(game.player_1).to eq player_1
    end
  end

  context "player_2" do
    it "retrieves the second player" do
      expect(game.player_2).to eq player_2
    end
  end

  context "attack" do
    it "damages the player" do
      expect(game.player_2).to receive(:reduce_points)
      game.attack(player_2)
    end
  end

  context "switch turns" do
    it "starts player 1" do
      expect(game.current_turn).to eq player_1
    end
  end
end

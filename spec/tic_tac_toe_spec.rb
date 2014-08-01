require 'rspec'
require 'board'
require 'game'
require 'player'
require 'space'

describe "Player" do
  describe "initialize" do
    it "creates a new player object with a symbol" do
      new_player = Player.new("x")
      expect(new_player).to be_an_instance_of Player
    end
  end
end

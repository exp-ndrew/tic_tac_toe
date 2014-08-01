require 'rspec'
require 'board'
require 'game'
require 'player'
require 'space'
require 'pry'

describe "Player" do
  describe "initialize" do
    it "creates a new player object with a symbol" do
      new_player = Player.new("x")
      expect(new_player).to be_an_instance_of Player
    end
  end
end

describe "Space" do
  describe "initialize" do
    it "creates a new space object with an x and y coordinate" do
      new_space = Space.new({:x_coord => 1, :y_coord => 1})
      expect(new_space.x_coord).to eq(1)
    end
  end
end

describe "Board" do
  describe "initialize" do
    it "creates a board with 9 spaces" do
      new_board = Board.new
      binding.pry
      expect(new_board.spaces[0].x_coord).to eq(1)
    end
  end
end

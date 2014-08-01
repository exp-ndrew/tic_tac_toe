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

  describe "move" do
    it "sets a space on the board to mark with the player's symbol" do
      new_game = Game.new
      # binding.pry
      new_game.x_player.move(new_game.game_board,1,1)
      expect(new_game.game_board.spaces[0].marked_by).to eq "x"
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
      expect(new_board.spaces[0].x_coord).to eq(1)
    end
  end

  describe "mark_space" do
    it "sets @marked_by on a space with a given coordinate to 'x' or 'o'" do
      new_board = Board.new
      new_board.mark_space(1,1,"x")
      expect(new_board.spaces[0].marked_by).to eq "x"
    end
  end
end

describe "Game" do
  describe "initialize" do
    it "creates a new board, a new player(x) and a new player(o)" do
      new_game = Game.new
      expect(new_game).to be_an_instance_of Game
    end
  end
end



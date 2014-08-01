require 'rspec'
require 'board'
require 'game'
require 'player'
require 'space'
require 'pry'


describe "Game" do
  describe "initialize" do
    it "creates a new board, a new player(x) and a new player(o)" do
      new_game = Game.new
      expect(new_game).to be_an_instance_of Game
    end
  end

  describe "make_move" do
    it "changes the @marked_by value on the space corresponding to the given x/y coordinates" do
      new_game = Game.new
      new_game.make_move("x",1,"a")
      expect(new_game.game_board.spaces[0].marked_by).to eq "x"
    end
  end

  describe "game_over" do
    it "checks to see if a player has won the game" do
      new_game = Game.new
      new_game.game_board.spaces[0].marked_by = "x"
      new_game.game_board.spaces[3].marked_by = "x"
      new_game.game_board.spaces[6].marked_by = "x"
      new_game.game_over
      expect(new_game.game_over).to eq "x player wins!"
    end

    it "checks to see if no one wins" do
      new_game = Game.new
      new_game.game_board.spaces[0].marked_by = "x"
      new_game.game_board.spaces[1].marked_by = "x"
      new_game.game_board.spaces[2].marked_by = "o"
      new_game.game_board.spaces[3].marked_by = "o"
      new_game.game_board.spaces[4].marked_by = "o"
      new_game.game_board.spaces[5].marked_by = "x"
      new_game.game_board.spaces[6].marked_by = "x"
      new_game.game_board.spaces[7].marked_by = "x"
      new_game.game_board.spaces[8].marked_by = "o"
      new_game.game_over
      expect(new_game.game_over).to eq "Cat's Game"
    end

    it "returns a winner even if the grid is full" do
      new_game = Game.new
      new_game.game_board.spaces[0].marked_by = "x"
      new_game.game_board.spaces[1].marked_by = "x"
      new_game.game_board.spaces[2].marked_by = "o"
      new_game.game_board.spaces[3].marked_by = "o"
      new_game.game_board.spaces[4].marked_by = "o"
      new_game.game_board.spaces[5].marked_by = "x"
      new_game.game_board.spaces[6].marked_by = "o"
      new_game.game_board.spaces[7].marked_by = "x"
      new_game.game_board.spaces[8].marked_by = "o"
      new_game.game_over
      expect(new_game.game_over).to eq "o player wins!"
    end
  end
end

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
      new_space = Space.new({:number_coord => 1, :letter_coord => "a"})
      expect(new_space.number_coord).to eq(1)
    end
  end
end

describe "Board" do
  describe "initialize" do
    it "creates a board with 9 spaces" do
      new_board = Board.new
      expect(new_board.spaces[0].number_coord).to eq(1)
    end
  end
end




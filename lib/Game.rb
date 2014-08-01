class Game

  attr_reader(:x_player, :o_player)
  attr_accessor(:game_board)

  def initialize
    @game_board = Board.new
    @x_player = Player.new("x")
    @o_player = Player.new("o")
  end

  def make_move (symbol, x_coord, y_coord)
    @game_board.spaces.each do |space|
      if space.x_coord == x_coord && space.y_coord == y_coord
        space.marked_by = symbol
      end
    end
  end
end

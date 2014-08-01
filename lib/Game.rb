class Game

  attr_reader(:x_player, :o_player)
  attr_accessor(:game_board)

  def initialize
    @game_board = Board.new
    @x_player = Player.new("x")
    @o_player = Player.new("o")
  end

end

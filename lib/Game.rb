class Game
  def initialize
    Board.new
    Player.new("x")
    Player.new("o")
  end
end

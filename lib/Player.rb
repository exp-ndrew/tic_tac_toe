class Player

  attr_reader(:symbol)

  def initialize (symbol)
    @symbol = symbol
  end

  def move (board, x_coord, y_coord)
    board.mark_space(x_coord,y_coord,self.symbol)
  end

end

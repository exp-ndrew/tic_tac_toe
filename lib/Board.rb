class Board

  attr_reader (:spaces)

  def initialize
    @spaces = []
    (1..3).each do |x|
      (1..3).each do |y|
        @spaces << Space.new({:x_coord => x, :y_coord => y})
      end
    end
  end

  def mark_space (x_coord, y_coord, symbol)
    @spaces.each do |space|
      if space.x_coord == x_coord && space.y_coord == y_coord
        space.marked_by = symbol
      end
    end
  end
end

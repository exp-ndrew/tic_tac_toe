class Space

  attr_reader(:x_coord, :y_coord)

  def initialize (attributes)
    @x_coord = attributes[:x_coord]
    @y_coord = attributes[:y_coord]
    @x_mark = false
    @o_mark = false
  end
end

class Space

  attr_reader(:x_coord, :y_coord)
  attr_accessor(:marked_by)

  def initialize (attributes)
    @x_coord = attributes[:x_coord]
    @y_coord = attributes[:y_coord]
    @marked_by = nil
  end

end

class Space

  attr_reader(:number_coord, :letter_coord)
  attr_accessor(:marked_by)

  def initialize (attributes)
    @number_coord = attributes[:number_coord]
    @letter_coord = attributes[:letter_coord]
    @marked_by = " "
  end

end

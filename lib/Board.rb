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

end

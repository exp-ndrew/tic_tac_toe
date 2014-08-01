class Board

  attr_accessor (:spaces)

  def initialize
    @spaces = []
    (1..3).each do |number_coord|
      ["a", "b", "c"].each do |letter_coord|
        @spaces << Space.new({:number_coord => number_coord, :letter_coord => letter_coord})
      end
    end
  end
end

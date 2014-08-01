class Board


  def initialize
    (1..3).each do |x|
      (1..3).each do |y|
        Space.new(x,y)
      end
    end
  end
end

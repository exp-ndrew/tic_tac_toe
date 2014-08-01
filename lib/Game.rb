class Game

  attr_reader(:x_player, :o_player)
  attr_accessor(:game_board)

  def initialize
    @game_board = Board.new
    @x_player = Player.new("x")
    @o_player = Player.new("o")
  end

  def make_move (symbol, number_coord, letter_coord)
    @game_board.spaces.each do |space|
      if space.number_coord == number_coord && space.letter_coord == letter_coord
        space.marked_by = symbol
      end
    end
  end

  def game_over

    @marked_spaces = {"x" => [],"o" => []}

    self.game_board.spaces.each_with_index do |space, index|
      ["x","o"].each do |symbol|
        if symbol == space.marked_by
          @marked_spaces[symbol] << index
        end
      end
    end

    @marked_spaces["x"].sort!
    @marked_spaces["o"].sort!

    if      @marked_spaces["x"].include?(0) && @marked_spaces["x"].include?(3) && @marked_spaces["x"].include?(6) ||
            @marked_spaces["x"].include?(1) && @marked_spaces["x"].include?(4) && @marked_spaces["x"].include?(7) ||
            @marked_spaces["x"].include?(2) && @marked_spaces["x"].include?(5) && @marked_spaces["x"].include?(8) ||
            @marked_spaces["x"].include?(0) && @marked_spaces["x"].include?(1) && @marked_spaces["x"].include?(2) ||
            @marked_spaces["x"].include?(3) && @marked_spaces["x"].include?(4) && @marked_spaces["x"].include?(5) ||
            @marked_spaces["x"].include?(6) && @marked_spaces["x"].include?(7) && @marked_spaces["x"].include?(8) ||
            @marked_spaces["x"].include?(0) && @marked_spaces["x"].include?(4) && @marked_spaces["x"].include?(8) ||
            @marked_spaces["x"].include?(2) && @marked_spaces["x"].include?(4) && @marked_spaces["x"].include?(6)

        result = "x"

    elsif   @marked_spaces["o"].include?(0) && @marked_spaces["o"].include?(3) && @marked_spaces["o"].include?(6) ||
            @marked_spaces["o"].include?(1) && @marked_spaces["o"].include?(4) && @marked_spaces["o"].include?(7) ||
            @marked_spaces["o"].include?(2) && @marked_spaces["o"].include?(5) && @marked_spaces["o"].include?(8) ||
            @marked_spaces["o"].include?(0) && @marked_spaces["o"].include?(1) && @marked_spaces["o"].include?(2) ||
            @marked_spaces["o"].include?(3) && @marked_spaces["o"].include?(4) && @marked_spaces["o"].include?(5) ||
            @marked_spaces["o"].include?(6) && @marked_spaces["o"].include?(7) && @marked_spaces["o"].include?(8) ||
            @marked_spaces["o"].include?(0) && @marked_spaces["o"].include?(4) && @marked_spaces["o"].include?(8) ||
            @marked_spaces["o"].include?(2) && @marked_spaces["o"].include?(4) && @marked_spaces["o"].include?(6)

        result = "o"

    end
      result
  end

end


# 012, 345, 678 (vertical wins)
# 036, 147, 258 (horizontal wins)
# 048, 246 (diagonal wins)

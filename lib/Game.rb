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


    winning_combos = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]

    ["x","o"].each do |symbol|
      winning_combos.each_with_index do |combo, index|
        if  @marked_spaces[symbol].include?(combo[0]) &&
            @marked_spaces[symbol].include?(combo[1]) &&
            @marked_spaces[symbol].include?(combo[2])

          @result = symbol

        end
      end
    end
    @result
  end

end



# 012, 345, 678 (vertical wins)
# 036, 147, 258 (horizontal wins)
# 048, 246 (diagonal wins)

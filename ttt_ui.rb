require './lib/game'
require './lib/board'
require './lib/space'
require './lib/player'

@current_turn = nil


def tic_tac_toe
  puts "Tic Tac Toe\n\n\n"
  puts "Press 's' to start a new game."
  puts "Press 'x' to exit."
  input = gets.chomp
  case input
    when 's'
      start_game
    when 'x'
      puts "Goodbye!"
      sleep 1
      exit
    else
      puts "That's not a valid input!"
  end
end

def start_game
  @new_game = Game.new #we need to expose new_game outside of the start_game method
  @current_turn = "x"
  turn
end

def turn

  loop do
    system("clear")

    case @current_turn
      when 'x'
        puts "X Player, your turn!"
      when 'o'
        puts "O Player, your turn!"
      else
        puts "something's wrong..."
    end

    show_board

    puts "Enter the coordinates of the space you want to mark:"
    input = gets.chomp

    number = input[1].to_i
    letter = input[0]

    @new_game.make_move(@current_turn, number, letter)

    #check if the game is won

    #game_over?

    #switch the current turn to the next user
    case @current_turn
    when 'x'
      @current_turn = 'o'
    when 'o'
      @current_turn = 'x'
    end
    #do it all again

    # at this point we could run it and see if we can assign the @markeD_by

    # we need to put something in that checks if the game is won


  end
end

def show_board
  puts  "   1   2   3"
  puts  "a  #{@new_game.game_board.spaces[0].marked_by} | #{@new_game.game_board.spaces[3].marked_by} | #{@new_game.game_board.spaces[6].marked_by} "
  puts  "  ---|---|---"
  puts  "b  #{@new_game.game_board.spaces[1].marked_by} | #{@new_game.game_board.spaces[4].marked_by} | #{@new_game.game_board.spaces[7].marked_by} "
  puts  "  ---|---|---"
  puts  "c  #{@new_game.game_board.spaces[2].marked_by} | #{@new_game.game_board.spaces[5].marked_by} | #{@new_game.game_board.spaces[8].marked_by} "
end

tic_tac_toe

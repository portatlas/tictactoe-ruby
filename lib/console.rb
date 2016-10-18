class Console

  def show_board(board)
    puts " #{board[0]} " + "|" + " #{board[1]} " + "|" + " #{board[2]} "
    puts "- - - - - -"
    puts " #{board[3]} " + "|" + " #{board[4]} " + "|" + " #{board[5]} "
    puts "- - - - - -"
    puts " #{board[6]} " + "|" + " #{board[7]} " + "|" + " #{board[8]} "
  end

  def display_intro_msg(game_being_played)
    puts "Welcome to #{game_being_played.desc[:name]} \n#{game_being_played.desc[:instructions]}"
  end

  def get_user_input
    gets.chomp.to_i
  end

end
class TictactoeRules

  attr_reader :desc

  WIN_COMBOS = [[0,1,2],[3,4,5],[6,7,8],
                [0,3,6],[1,4,7],[2,5,8],
                [0,4,8],[2,4,6]]

  def initialize
    @desc = {
             name: "TacTacToe",
     instructions: "You (X) and the computer (O) will take turns placing a 'X' and 'O' respectively, the player who succeeds in placing three of their marks in a horizontal, vertical or diagonal row wins."}
  end

  def won?(board, turn)
    WIN_COMBOS.detect do |win_combo|
      (board.board[win_combo[0]]  == turn && board.board[win_combo[1]]  == turn && board.board[win_combo[2]]  == turn )
    end
  end

  def draw?(board, turn)
    board.valid_slots == [] && won?(board, turn) == nil
  end

  def game_over?(board)
    board.valid_slots == [] || won?(board, "X") || won?(board, "O") ? true : false
  end

end
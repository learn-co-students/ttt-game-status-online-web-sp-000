require 'pry'
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]

def won?(board)
    WIN_COMBINATIONS.detect do |combo|
      position_taken?(board, combo[0]) && board[combo[0]] == board[combo[1]] && board[combo[1]]  == board[combo[2]]
    end
end

def full?(board)
  board.all? do |space|
    space == "X" || space == "O"
  end
end

def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
  won?(board) || full?(board)
end

def winner(board)
    if won?(board)
       board[won?(board)[1]]

  #  board[won?(board)]. do |winner|
  #    winner == "X"
  #
  #    winner == "O"
    end
end
# end

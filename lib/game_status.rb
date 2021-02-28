# Helper Method
require 'pry'

def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS= [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]

def won?(board)

WIN_COMBINATIONS.each do |win|
  if board[win[0]] == "X" && board[win[1]] == "X" && board[win[2]] == "X"
    return win
  elsif board[win[0]] == "O" && board[win[1]] == "O" && board[win[2]] == "O"
    return win
  end
  end
  return false
end

def full?(board)
    board.all? do |position|
    position == "X" || position == "O"
    end
end


def draw?(board)
if full?(board) == true && won?(board) == false
return true
end
end

def over?(board)
if won?(board) || full?(board) || draw?(board)
  return true
end
end
#
def winner(board)
  if over?(board)
  return board[won?(board)[0]]
end
end

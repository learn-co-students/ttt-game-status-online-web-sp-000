# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [2,4,6],
  [0,4,8],
  [0,3,6],
  [2,5,8],
  [1,4,7],
]
#won needs to take in the board and the win combinations
#
#it needs check the indexes of each combo on the board
#for each board[WIN_COMBINATIONS[]]
#if any index combo is all Xs or all Os declare true
def won?(board)
  if board.all? == " " || board.all? == nil
    return nil
  else
WIN_COMBINATIONS.detect do |win|
 board[win[0]] == "X" && board[win[1]] == "X" && board[win[2]] == "X" ||
  board[win[0]] == "O" && board[win[1]] == "O" && board[win[2]] == "O"

    end
  end
end

def full?(board)
  board.none? do |i| i == " " || i == ""
  end
end

def draw?(board)
  if  won?(board) == nil && full?(board) == true
    return true


  end
end

def over?(board)
if won?(board) != nil || draw?(board) == true
  return true
end
end

def winner(board)
if over?(board) == true && won?(board) != false
  return board[won?(board)[0]]
else
  return nil
end
end

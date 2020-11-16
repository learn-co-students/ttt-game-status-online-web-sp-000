# Helper Method
require "pry"

def position_taken?(board, index)
#  !(board[index].nil? || board[index] == " ")
  board[index] == "X" || board[index] == "O"
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], #top row
  [3,4,5], #middle row
  [6,7,8], #bottom row
  [0,4,8], #left diagonals
  [2,4,6], #right diagonals
  [0,3,6], #left columns
  [1,4,7], #middle column
  [2,5,8] #right column
]

def won?(board)
    WIN_COMBINATIONS.detect {|win_combination| board[win_combination[0]] == board[win_combination[1]] && board[win_combination[1]] == board[win_combination[2]] && position_taken?(board, win_combination[0])}
end
  ##finding and returning the first result from the nested array of WIN_COMBINATIONS where the board() index equivalent of nested array index 0 == 1 == 2 AND the position is taken for board(win_combination[0])
  ## I may have to expand the position taken argument


def full?(board)
  board.all? {|spot| spot == "X" || spot == "O"}
end

def draw?(board)
  !won?(board) && full?(board)
end

def over?(board)
  full?(board) || won?(board)
end

def winner(board)
  if won?(board)
    board[won?(board)[0]]
  else
    puts "no winner!"
  end
  #this is referencing the index/integer but we want it to connect to the board's letter
  #input that argument into board to retrieve "X" "O" or nil

#detect will just pull the index from array


  #I want to know which string correlates with [0] of won?(board)'s output array
end

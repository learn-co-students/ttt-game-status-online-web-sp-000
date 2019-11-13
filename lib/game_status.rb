# Helper Method
require 'pry'
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [[0,1,2], [3,4,5], [6,7,8], [0,3,6],
   [1,4,7], [2,5,8], [0,4,8], [6,4,2]]
   
def won?(board)
  WIN_COMBINATIONS.find do |indexes|
    board[indexes[0]] == board[indexes[1]] && board[indexes[1]] == board[indexes[2]] && position_taken?(board, indexes[0])
  end
end

def full?(board)
  board.all?{|position| position == "X" || position == "O"}
end

def draw?(board)
  !won?(board) && full?(board)
end

def over?(board)
  won?(board) || draw?(board)
end

def winner(board)
  if won?(board)
    board[won?(board)[0]]
  else
    nil
  end
end



# Define your WIN_COMBINATIONS constant

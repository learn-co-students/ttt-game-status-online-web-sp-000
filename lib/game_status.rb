# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end


# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
   [0, 1, 2], #top row
   [3, 4, 5], #mid row
   [6, 7, 8], #bot row 
   [0, 3, 6], #1st col
   [1, 4, 7], #2nd col
   [2, 5, 8], #3rd col
   [0, 4, 8], #left diag
   [2, 4, 6]  #right diag
]

def won? (board)
  WIN_COMBINATIONS.detect do |array|
    array.all? {|index| board[index] == "X"} || array.all? {|index| board[index] == "O"}
  end
end

def full? (board) 
  board.all? {|string| (string == "X" ||string == "O")} 
end

def draw? (board)
  if full?(board) && !won?(board)
    true
  end
end
def over? (board)
  if won?(board) || draw?(board) || full?(board)
    true
  end
end
    
def winner (board)
  if won?(board)
  winner = won?(board)
 board[winner[0]]
  else
    nil
  end
end


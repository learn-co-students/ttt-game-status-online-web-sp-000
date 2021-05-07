# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],  #top row
  [3,4,5],  #middle row
  [6,7,8],  #bottom row
  [0,3,6],  #top left straight down to bottm left
  [1,4,7],  #top middle straight down to bottom middle
  [2,5,8],  #top right straigh down to bottom right
  [0,4,8],  #diagonal top left to bottom right
  [2,4,6]  #diagonal top right to bottom left
]

def won?(board)
  
  WIN_COMBINATIONS.detect do |win|
    if board[win[0]] == "X" && board[win[1]] == "X" && board[win[2]] == "X"
      return win
  elsif
    board[win[0]]== "O" && board[win[1]] == "O" && board[win[2]] == "O"
      return win
    end
  end
  false
end

def full?(board)
  board.each do |spot|
    if spot == " " 
      return false
    end
  end
end

def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
  won?(board) || draw?(board)
end

def winner(board)
  if won?(board)
    board[won?(board)[0]]
  else
    return nil
  end
end

#if the spot is empty then return false 

#no more matching combo and no more spaces

#return true when the board is taken up
#return true for a won game when board is full
#return false when the game is not over yet

#return x when x won


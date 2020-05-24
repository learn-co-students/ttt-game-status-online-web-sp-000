# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # top row win
  [3,4,5], # middle row win
  [6,7,8], # bottom row win
  [0,3,6], # left column win
  [1,4,7], # middle row win
  [2,5,8], # right row win
  [0,4,8], # left diagonal win
  [2,4,6] # right diagonal win
]

def won?(board)
  WIN_COMBINATIONS.each do |token|
    if token.all? {|i| board[i] == "X"} || token.all? {|i| board[i] == "O"}
      return token
    end
  end
  return false
end

def full?(board)
  board.all? {|i| i == "X" || i == "O"}
end

def draw?(board)
  !won?(board) && full?(board)
end

def over?(board)
  won?(board) || draw?(board) || full?(board)
end

def winner(board)
   if won?(board)
      return board[won?(board)[0]]
   end
end

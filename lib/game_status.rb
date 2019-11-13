# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2], # Top row 
  [3, 4, 5], # Middle row
  [6, 7, 8], # Bottom row
  [0, 4, 8], # Top left diagonal
  [2, 4, 6], # Top right diagonal 
  [0, 3, 6], # Left vertical 
  [1, 4, 7], # Middle vertical 
  [2, 5, 8] # Right vertical
]

def won?(board)
  WIN_COMBINATIONS.detect do |win_combo|
    if (board[win_combo[0]] == "X" && board[win_combo[1]] == "X" && board[win_combo[2]] == "X") || 
       (board[win_combo[0]] == "O" && board[win_combo[1]] == "O" && board[win_combo[2]] == "O")
      return win_combo.to_ary
    end
  end
end 
    
def full?(board) 
  board.all? {|token| token == "X" || token == "O"}
end

def draw?(board) 
  if !won?(board) && full?(board)
    return true 
  else false 
  end 
end
    
def over?(board) 
  if won?(board) || draw?(board) || full?(board) 
    return true 
  end 
end 
    
def winner(board) 
  winning_combo = won?(board)
  if winning_combo 
    return board[winning_combo[0]]
  else 
  end
end
    
    
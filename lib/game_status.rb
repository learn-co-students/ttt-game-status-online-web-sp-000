require 'pry'
# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5], # Mid row
  [6,7,8], # Bottom row
  [0,3,6], #left col
  [1,4,7], # mid col
  [2,5,8], # Bottom col
  [0,4,8], # Left Diag 
  [2,4,6] # Right Diag 
]

def won?(board)
  WIN_COMBINATIONS.each do |index|
        if index.all? {|i| board[i]== "X"}
          return index
        elsif index.all? {|i| board[i]== "O"}
          return index
      end
    end
  nil
end

def full?(board)
    board.all? do |player|
    player == "X" || player == "O"
  end
end

def draw?(board)
!won?(board) && full?(board)  
end

def over?(board)
 won?(board) || draw?(board) || full?(board)
end

def winner(board)
  if winning_combo = won?(board)
    board[winning_combo.first]
  end
end
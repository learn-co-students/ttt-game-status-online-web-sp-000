# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [0, 3, 6],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6],
  [6, 7, 8],
  [1, 4, 7]
  
  ]
  
  def won?(board)
      win_combo = WIN_COMBINATIONS.select do |combo|
        combo.all? { |index| board[index] == "X" } ||
        combo.all? { |index| board[index] == "O" }
      end 
      
      if @empty_board
        false 
      end 
  end 

def full (board)
  full_board = ["X" , "O" , "X" , "O" , "X" , "O", "X" , "O"]
  incomplete_board = ["X" , " " , " " , "O" , "X" , "O", " ", " "]
  @empty_board = [" ", " ", " ", " ", " ", " ", " ", " "]
  if board == full_board
    return true 
   if board == incomplete_board 
     #|| board == empty_board
     return false 
  end 
  end
end
   # position_1 = board[win_index_1]
  #  position_2 = board[win_index_2]
   # position_3 = board[win_index_3]
    
 ## if position_1 == "X" && position_2 == "X" && position_3 == "X"
   ## return WIN_COMBINATION
##  else 
  #  false 
   # end
  
  
  
# Helper Method
require 'pry'
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
          WIN_COMBINATIONS.detect do |combo| 
          board[combo[0]] == board[combo[1]] && board[combo[1]] == board[combo[2]] && 
          position_taken?(board, combo[0])
    
      end 
  end 

def full? (board)
  
   if !won?(board) && board[index] != " "
      true 
   else 
      false 
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
  
  
  
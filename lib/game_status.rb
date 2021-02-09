# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6],
 
]
# returns the winning combination if the board has been won
def won?(board)
 # Check if board is empty. Skip all if it is
 is_empty = board.all? do |cell|
  if cell == " "
      true
    else
      false
    end
  end 
  
  if is_empty == false 
    
    # Iterate through winning combos  
    WIN_COMBINATIONS.each do |win_combo|
    win_index_1 = win_combo[0]
    win_index_2 = win_combo[1]
    win_index_3 = win_combo[2]
    
      if (position_taken?(board,win_index_1) && position_taken?(board,win_index_2) && position_taken?(board,win_index_3))
       
        positions = [board[win_index_1], board[win_index_2], board[win_index_3]]
        
        all_x = positions.all? do |position|
          if position == "X"
            true
          else
            false
          end
        end 
        
        all_o = positions.all? do |position|
          if position == "O"
            true
          else
            false
          end
        end 
        
        # return winning combo if all the pieces match
        if all_x || all_o
          return win_combo
        end
      end
    end
    
    # If no winning combo, return false (for draw)
    is_draw = board.none? do |cell|
      if cell == " "
          true
        else
          false
        end
      end
      
    if is_draw
      return false
    end
  else
    return false
  end
end

# returns true if the board is full regardless of winning
def full?(board)
  is_full = board.none? do |cell|
  
  if cell == " "
      true
    else
      false
    end
  end 
  
  return is_full
 end
 
 # returns true if board is full but has not been won
 def draw? (board)
   is_full = full?(board)
   is_won = won?(board)
   
   if is_full == true && is_won == false
     return true
   else
     return false
   end
 end
 
 # returns true if the board has been won, is a draw, or is full
  def over? (board)
   is_full = full?(board)
   is_won = won?(board)
   is_draw = draw?(board)
   
   if is_full || is_won || is_draw
     return true
   else
     return false
   end
 end
 
 def winner(board)
   if (over?(board) == false)
     return nil
   else
     win_combo = won?(board)
     
     all_x = win_combo.all? do |cell|
          if board[cell] == "X"
            true
          else
            false
          end
      end 
      
      if all_x
        return "X"
      else
        return "O"
      end
   end
 end
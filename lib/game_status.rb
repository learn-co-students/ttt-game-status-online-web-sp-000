#require 'pry'

# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [[0,1,2],[3,4,5],[6,7,8],[0,4,8],[2,4,6],[0,3,6],[1,4,7],[2,5,8]]

# winning condition method
def won?(board)
  
  WIN_COMBINATIONS.each do |win_combination|
    
    win_index_1 = win_combination[0] 
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2] 
    
    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]
    
    if position_1 == "X" && position_2 == "X" && position_3 == "X"
         return win_combination
         
      
    else if position_1 == "O" && position_2 == "O" && position_3 == "O"
        return win_combination
        
    else
      false
      end
    end
  end
  false
end

# full board method
def full?(board)
  board.all? do |value|
    value == "X" || value == "O"
  end
  
end

# draw condition method
def draw?(board)
    if full?(board) == true && won?(board) == false
      true
      else if full?(board) == false && won?(board) == false
        false
        else if won?(board) != false
          false
    else
      false
    end
      end
        end
  end
  
# over condition method
def over?(board)
  if won?(board) != false || draw?(board) == true || full?(board) == true
   true
  else if won?(board) != false && full?(board) == false
       true
       
     else
       false
       
  end
end
  
end

# winner methor
def winner(board)
  if won?(board)
     won?(board).all? do |value|
      #binding.pry
        if board[value] == "X"
                return "X"
         else if board[value] == "O"
                return "O"
                      end
        end
              end
  end 
    return nil
end
 
 
 
 
 
 
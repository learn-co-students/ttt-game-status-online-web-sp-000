require 'pry'

# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [[0, 1, 2],[3, 4, 5],[6 ,7 ,8],[0, 3, 6],[1, 4, 7],[2, 5, 8],[0,4, 8],[2, 4, 6]]

def won?(board)

WIN_COMBINATIONS.each do |win_combination|
  win_index0 = win_combination[0]
  win_index1 = win_combination[1]
  win_index2 = win_combination[2]
 
  
  position_1 = board[win_index0]
  position_2 = board[win_index1]
  position_3 = board[win_index2]




if (position_1 == "X" && position_2 == "X" && position_3 == "X")
  return win_combination
  elsif (position_1 == "O" && position_2 == "O" && position_3 == "O")
  return win_combination

end

end
return false
end


def full?(board)
    board.all? do |marker|
      marker == "X" || marker == "O"
    end
  end
    
    
    # board.select do |counter|
    #   counter.count("X" || "O")
    #   if counter == 9
    #     return true
    #   if counter != 9
    #   return false
    # end
    # end
    # end

def draw?(board)
  if won?(board) == true
    return false
  elsif won?(board) == false && full?(board) == true
    return true
  elsif !won?(board) && !full?(board)
    return false
end
end

def over?(board)
    if draw?(board)
      return true
      
    elsif won?(board) && full?(board)
    return true
    
    elsif won?(board) && !full?(board)
      return true
      
    elsif !(won?(board) && full?(board))
      return false
    
    
   
  
  
   
    
  end  
end
  
def winner(board)
  if win_combo = won?(board)
  board[win_combo.first]
#else
 # return nil
end
 end


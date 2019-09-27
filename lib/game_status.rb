# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
[0,1,2],
[3,4,5],
[6,7,8],
[0,3,6],
[1,4,7],
[2,5,8],
[0,4,8],
[2,4,6]

]

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]


def won?(board)
  WIN_COMBINATIONS.each { |win_comb|
 
    win_index_1 = win_comb[0]
    win_index_2 = win_comb[1]
    win_index_3 = win_comb[2]
    
    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]
    
    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      return win_comb
    elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
      return win_comb
    end
  }
  return false
end
def full?(board)
if board.none? {|token|token== " "|| token=nil}
return true 
else return false 

end 
end 
def draw?(board)
 if full?(board) &&!won?(board)
 return true 
else
  return false
    
  end 
end 
def over?(board)
  if draw?(board) && won?(board) 
    return true 
    elsif won?(board)&& !full?(board) || won?(board)&&full?(board)
    return true 
    elsif draw?(board) 
    return true 
  else return false 
  end 
end 
def winner(board) 
  win = won?(board)
  if win == false
    return nil
  else
    if board[win[0]] == "X"
      return "X"
    else
      return "O"
    end
  end
end
   
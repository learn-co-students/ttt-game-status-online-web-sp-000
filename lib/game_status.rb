require 'pry'
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
  
  def won?(board)
    
    WIN_COMBINATIONS.each do |win_combination|
 
if board[win_combination[0]] == "X" && board[win_combination[1]] == "X" && board[win_combination[2]] == "X"
  return win_combination
 
 end
 if board[win_combination[0]] == "O" && board[win_combination[1]] == "O" && board[win_combination[2]] == "O"
  return win_combination
end
end
return false
end

def full?(board)
  WIN_COMBINATIONS.none? do |win_combination|
  if board[win_combination[0]] == " " 
    return false
    elsif board[win_combination[1]] == " "
    return false
    elsif board[win_combination[2]] == " "
    return false
    
  end
end
end

def draw?(board)
  if !won?(board) && full?(board)
    return true
  else
    return false
    
  end
end

def over?(board)
  if won?(board) || draw?(board) || full?(board)
    return true
  else 
    return false
end
end

def winner(board)
  if won?(board)  
      win_combination = won?(board)
      board[win_combination[0]] 
    
      

  end
end
  
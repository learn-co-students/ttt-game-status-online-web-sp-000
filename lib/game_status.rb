# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]]

def won?(board)
  WIN_COMBINATIONS.each do |combo|
    if board[combo[0]] == "X" && board[combo[1]] == "X" && board[combo[2]] == "X"
      return combo
    elsif board[combo[0]] == "O" && board[combo[1]] == "O" && board[combo[2]] == "O"
      return combo
    end 
  end
    false
end

def full?(board)
  board.each do |space|
    if space == " "
      return false
    end
  end  
end

def draw?(board)
  board.each do |space|
    if won?(board)
      return false
    elsif full?(board)
      return true
  end  
 end
end

def over?(board)
   if draw?(board) || won?(board) || full?(board)
     true
   else 
     false
  end
 end
 
def winner?(board)
  if won?(board) == "X" 
    return "X"
  elsif won?(board) == "O"
    return "O"
  else false
  end
 end
    
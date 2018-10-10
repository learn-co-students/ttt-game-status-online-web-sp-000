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
  [6,4,2]
  ]
  
def won?(board)
  
  winner_ = []
  
  WIN_COMBINATIONS.each do |array|
    if board[array[0]] == "X" && board[array[1]] == "X" && board[array[2]] == "X"
      winner_ = array
    elsif board[array[0]] == "O" && board[array[1]] == "O" && board[array[2]] == "O"
    winner_ = array
    else
    end
  end
  
  if winner_ != []
    return winner_
  else 
    return false

end
  
end




def full?(board)
  
  check = board.select{|i| i == " "}
  
  if check == []
    return true
  else check != []
    return false
  end
    
end


def draw?(board)
  if won?(board) == false && full?(board) == true 
    return true
  elsif won?(board) == false && full?(board) == true
    return false
  elsif won?(board) == true
    return true
  end
end

def over?(board)
  if won?(board) != false || full?(board) == true || draw?(board) == true
    return true
  elsif won?(board) == false || full?(board) == false || draw?(board) == false
    return false
  end
end
  

def winner(board)
  winning_combo = won?(board)
  
  if winning_combo != false
    
    token = winning_combo.detect{|i| board[i] != " "}
    
    return board[token[0]]
    
  else
  end
end
  

  
  
  
    
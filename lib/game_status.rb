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
    if (board[win_combination[0]]) == "X" && (board[win_combination[1]]) == "X" && (board[win_combination[2]]) == "X" 
      return win_combination
    elsif (board[win_combination[0]]) == "O" && (board[win_combination[1]]) == "O" && (board[win_combination[2]]) == "O" 
      return win_combination
    end
  end  
  false 
end

def full?(board)
  board.any? do |spot|
    if spot == "" || spot == " " || spot == nil 
      return false
    end 
  end 
  true 
end

def draw?(board)
  if full?(board) && !(won?(board))
    return true 
  else 
    return false
  end
end

def over?(board)
  if won?(board) || full?(board) || draw?(board)
    return true
  else
    return false 
  end
end 

def winner(board)
  index = won?(board)
  if index == false
    return nil
  else
    if board[index[0]] == "X"
      return "X"
    else
      return "O"
    end
  end
end
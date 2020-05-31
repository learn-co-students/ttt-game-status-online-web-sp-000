# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], #top row 
  [3,4,5], #middle row
  [6,7,8], #bottom row
  [0,3,6], #left column 
  [1,4,7], #middle column
  [2,5,8], #right column
  [0,4,8], #diagonal 1 
  [2,4,6], # diagonal 2
  ]
  
def won?(board)
  WIN_COMBINATIONS.any? do |win_combination|
   if board[win_combination[0]] == "X" && board[win_combination[1]] == "X" && board[win_combination[2]] == "X" 
     return win_combination
    elsif board[win_combination[0]]== "O" && board[win_combination[1]] == "O" && board[win_combination[2]] == "O"
     return win_combination
   else 
     false 
    end
  end
end

def full?(board)
  if board.any?{|element| element == " " } then return false
  else 
  return true
  end
end

def draw?(board)
  if (won?(board) == false && full?(board) == true)
  then return true
  end
end

def over?(board)
  if draw?(board) == true || (won?(board) != false && full?(board) == true) || (won?(board) != false && full?(board) != true) 
    then return true
  end
end
  
def winner(board)
  WIN_COMBINATIONS.detect do |win_combination|
    if board[win_combination[0]] == "X" && board[win_combination[1]] == "X" && board[win_combination[2]] == "X" 
      return "X"
    elsif board[win_combination[0]]== "O" && board[win_combination[1]] == "O" && board[win_combination[2]] == "O"
      return "O"
  end
  end
end
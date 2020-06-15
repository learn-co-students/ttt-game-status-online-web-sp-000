# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

WIN_COMBINATIONS = [
  [0,1,2], # Top row 
  [3,4,5], # Middle row 
  [6,7,8], # Bottom row 
  [0,3,6], # left column 
  [1,4,7], # middle column 
  [2,5,8], # right column 
  [0,4,8], # diag topleft 
  [2,4,6]  # diag botleft
 ]

def won?(board)
  WIN_COMBINATIONS.each do |win_combo|
      if (board[win_combo[0]] == "X" && board[win_combo[1]] == "X" && board[win_combo[2]] == "X") || (board[win_combo[0]] == "O" && board[win_combo[1]] == "O" && board[win_combo[2]] == "O")
       return win_combo 
      end
  end
  false
end

def full?(board)
  !board.any?{|x| x == " "}
end

def draw?(board)
  if full?(board) == true && won?(board) == false
    true
  else
    false
  end
end

def over?(board)
  if won?(board) || draw?(board)
    true
  else
    false
  end
end 

def winner(board)
  winning_combo = won?(board)
  if winning_combo
   board[winning_combo[0]]
  else 
   nil
  end
end 
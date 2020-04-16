require 'pry'
# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = 
[
  [0,1,2], #top_row_win 
  [3,4,5], #mid_row_win 
  [6,7,8], #low_row_win 
  [0,3,6], #vertical_left_win 
  [1,4,7], #vertical_center_win
  [2,5,8], #vertical_right_win 
  [0,4,8], #diag_left_to_right_win 
  [2,4,6] #diag_right_to_left_win 
] 
# binding.pry
def won?(board)
  WIN_COMBINATIONS.each do |combo|
    if board[combo[0]] == "X" && board[combo[1]] == "X" && board[combo[2]] == "X" 
       return combo 
    end
    if board[combo[0]] == "O" && board[combo[1]] == "O" && board[combo[2]] == "O" 
       return combo 
    end 
  end 
  false   
end 

def full?(board)
  board.all?{ |position| position == "X" || position == "O"}
end 

def draw?(board)
 full?(board) && !won?(board)
end 

def over?(board)
  won?(board) || full?(board)
end 

def winner(board)
  WIN_COMBINATIONS.each do |combo|
    if board[combo[0]] == "X" && board[combo[1]] == "X" && board[combo[2]]  == "X"
      return "X"
    elsif
      board[combo[0]] == "O" && board[combo[1]] == "O" && board[combo[2]]  == "O"
      return "O"
    elsif !won?(board)
      return nil
    end 
  end 
  
end 












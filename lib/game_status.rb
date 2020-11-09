require "pry"
#binding.pry 


WIN_COMBINATIONS = [ 
  [0, 1, 2],  
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [6, 4, 2],     
  ]
  
  
def position_taken?(board)
    if !board == nil? || board == " "
    end 
end 
   

def won?(board)
    WIN_COMBINATIONS.detect do |combo|
    board[combo[0]] == board[combo[1]] &&
    board[combo[1]] == board[combo[2]] &&
    position_taken?(board) 
    elsif board == 
end 
  

  
  
   
def full?(board) 
  board.all?{|token| token == "X" || token == "O"} 
end


def draw?(board)
  full?(board) && !won?(board)
end


def over?(board)
  won?(board) || full?(board)
end


def winner(board)
  if winning_combo = won?(board)
    board[winning_combo.first]
  elsif winning(board) == nil
  false 
  end 
end   
end  
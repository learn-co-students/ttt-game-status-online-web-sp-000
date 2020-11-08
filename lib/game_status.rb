require "pry"


def position_taken?(board, index)
  if !(board[index] == nil? || board[index] == " ")
  end
end 

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
  
   

  WIN_COMBINATIONS.each do |array|
   position_1 = array[0]
   position_2 = array[1]
   position_3 = array[2]
   
    if board[position_1] == "X" && board[position_2] == "X" && board[position_3] == "X"|| board[position_1] == "O" && board[position_2] == "O" && board[position_3] == "O" 
     then return array
    end  
  false 
end 


 def won?(board)
  if board == [" ", " ", " ", " ", " ", " ", " ", " ", " "] || board == nil
    return false 
  elsif board[position_1] == "X" || board[position_1] == "O" 
    over?(board)
    board_position
  end 
  
 
 
  
def full?(board) 
  board.each do |combo|
  if board.include? " " 
 # binding.pry
   in_progress_board 
    else 
      puts "Board is full - please start another game"  
    draw?(board) 
    over?(board)
    end  
  end 
end 


def draw?(board)
  puts "Game was a draw."
end 


def in_progress_board(board)
  puts "Please continue game."
end 

def over?(board)
  
  puts "Another game?"
end   

def winner(board)
  if board[position_1] =="X"
  puts "Winner is X"
  #binding.pry 
  elsif board[position_2] == "O"
  puts "Winner is O"
else puts "No winner."
  end 
 end 
 end 
 
 

def in_progress(board)
  puts "Please take another turn."
 end  
 
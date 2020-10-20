require 'pry' 

# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], #Top Row
  [3,4,5], #Middle Row
  [6,7,8], #Bottom Row
  [0,3,6], #Right Row
  [1,4,7], #Middle Vertical
  [2,5,8], #Left Row
  [0,4,8], #Cross 1 
  [2,4,6], #Cross 2
  ]
  
def won?(board)
   WIN_COMBINATIONS.detect do |i|
    #check if index [0,1,2] are all the same 
   board[i[0]] == board[i[1]] &&
   board[i[1]] == board[i[2]] &&
   #see if there are values in this arrary
   position_taken?(board,i[0]) 
  end 
end 

def full?(board)
#check to see if board has all arrary spots filled in 
  board.all?  do |i|
    #ask if i is equal to X or O 
  i == "X" || i == "O"  
end
end

def draw?(board)
  #if board has not been won but is full 
   !won?(board) && full?(board)
end  

def over?(board)
  #if the board has been won, is a draw, or is full, return true 
   won?(board)  || draw?(board) || full?(board)  
end  

def winner(board)
   won=won?(board)
   if won 
      board[won[0]]
    end  
end  
  
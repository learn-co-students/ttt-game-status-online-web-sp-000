# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = 
[
  [0, 1, 2]
  [3, 4, 5]
  [6, 7, 8]
  [0, 3, 6]
  [1, 4, 7]
  [2, 5, 8]
  [0, 4, 8]
  [2, 4, 6]
  ]

def won?(board)
   board.include(WIN_COMBINATIONS)
 end 
 
 def full?(board)
   board.any(" ")
 end 
 
 def draw?
   if full? = true && won?= false
 end 
 
 def over?
   if draw? || won? || full?
     puts "Game Over"
   end 

def winner(board)
  if WIN_COMBINATIONS.all? = "X"
    puts "Winner is Player X"
  else WIN_COMBINATIONS.all? = "O"
    puts "Winner is Player O"
  end
end 
  
   
   
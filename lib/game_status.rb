# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end


# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],#top row
  [3,4,5],#middle row
  [6,7,8],#bottom row
  [0,3,6], # left colum
  [1,4,7], # middle colum
  [2,5,8], # right colum
  [0,4,8], #diagonal 1
  [2,4,6] # diagonal 2
]
 def won?(board)
  #board.each do |value|
#  "#{value}" == " "  ? false : true
#  end
  if board[0] == "X" && board[1] == "X" && board[2] == "X"
    WIN_COMBINATIONS[0] #top row X
  elsif board[0] == "O" && board[1] == "0" && board[2] == "O"
    WIN_COMBINATIONS[0] #top row O

  elsif board[0] == "X" && board[3] == "X" && board[6] == "X"
    WIN_COMBINATIONS[3] #left column x
  elsif board[0] == "O" && board[3] == "O" && board[6] == "O"
    WIN_COMBINATIONS[3] #left column o

  elsif board[0] == "X" && board[4] == "X" && board[8] == "X"
    WIN_COMBINATIONS[6] # left diagonal x
  elsif board[0] == "O" && board[4] == "O" && board[8] == "O"
    WIN_COMBINATIONS[6] # left diagonal o

  elsif board[1] == "X" && board[4] == "X" && board[7] == "X"
    WIN_COMBINATIONS[4] #middle column x
  elsif board[1] == "O" && board[4] == "O" && board[7] == "O"
    WIN_COMBINATIONS[4] #middle column o

  elsif board[2] == "X" && board[4] == "X" && board[6] == "X"
    WIN_COMBINATIONS[7] #right diagonal x
  elsif board[2] == "O" && board[4] == "O" && board[6] == "O"
    WIN_COMBINATIONS[7] #right diagonal o

  elsif board[2] == "X" && board[5] == "X" && board[8] == "X"
    WIN_COMBINATIONS[5] #right column x
  elsif board[2] == "O" && board[5] == "O" && board[8] == "O"
    WIN_COMBINATIONS[5] #right column o

  elsif board[3] == "X" && board[4] == "X" && board[5] == "X"
    WIN_COMBINATIONS[1] #middle row x
  elsif board[3] == "O" && board[4] == "O" && board[5] == "O"
    WIN_COMBINATIONS[1] #middle row o
  elsif board[6] == "X" && board[7] == "X" && board[8] == "X"
    WIN_COMBINATIONS[2] # bottom row x
  elsif board[6] == "O" && board[7] == "O" && board[8] == "O"
    WIN_COMBINATIONS[2] # bottom row o
else
 false
  end
 end


 def full?(board)
  board.include?(" ") ? false : true

end

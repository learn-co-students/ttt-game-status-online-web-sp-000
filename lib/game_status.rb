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


# won
def won?(board)
  WIN_COMBINATIONS.detect do |win_combo|
    board[win_combo[0]] == board[win_combo[1]] &&
    board[win_combo[1]] == board[win_combo[2]] &&
    position_taken?(board, win_combo[0])
  end
end


#full
def full?(board)
board.none?{|value| value == " " }
end


#draw
def draw?(board)
  full?(board) && !won?(board)
end


#over
def over?(board)
won?(board) || full?(board) #? true : false
end

#winner
def winner(board)
  if winning_combo = won?(board)
    board[winning_combo.first]
  end
end

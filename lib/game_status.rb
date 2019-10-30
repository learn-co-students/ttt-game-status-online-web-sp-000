# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2]
  [3,4,5]
  [6,7,8]
  [0,3,6]
  [1,4,7]
  [2,5,8]
  [0,4,8]
  [2,4,6]
]

#won
def won? (board)
  WIN_COMBINATIONS.find do |win|
    position_taken?(board,win)
  end
end

#full
def full?(board)
  board.all? do |taken|
    taken == "X" || taken =="O"
  end
end

#draw
def draw?(board)
  full?(board) && !won?(board)
end

#over
def over?(board)
  won?(board) || full?(board)
end

#winner
def winner(board)
  if winner = won?(board)
    board[winner.first]
  end
end

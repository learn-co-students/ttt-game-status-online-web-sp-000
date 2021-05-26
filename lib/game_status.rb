# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# all of the winning combinations in tic tac toe
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [2,5,8],
  [1,4,7],
  [0,3,6],
  [0,4,8],
  [2,4,6]
]

# checks the current turn to see if the board contains a winner
def won?(board)
  WIN_COMBINATIONS.detect do |combinations|
    position_1 = board[combinations[0]]
    position_2 = board[combinations[1]]
    position_3 = board[combinations[2]]

  if position_1 == "X" && position_2 == "X" && position_3 == "X" || position_1 == "O" && position_2 == "O" && position_3 == "O"
   true
  else
   false
 end
end
end

# makes sure there are spots left to continue on with the game
def full?(board)
  board.all? do |pos|
     pos == "X" || pos == "O"
    end
  end

# if the board becomes full, but none of the won conditions are met yet calls a draw
  def draw?(board)
    if full?(board) && !won?(board)
      true
    else
      false
    end
  end

# determines if the game is over
  def over?(board)
  if won?(board) || full?(board)
    true
  else
    false
  end
end

# determines wether X or O won the match
  def winner(board)
    if won?(board)
      board[won?(board)[0]]
    end
  end

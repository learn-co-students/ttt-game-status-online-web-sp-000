# Helper Method
def position_taken?(board, index)
  # returns false if position is NOT taken == yes, taken
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]


# Check to see if there was a win
def won?(board)
  WIN_COMBINATIONS.detect do |win_combo|
    position_1 = board[win_combo[0]]
    position_2 = board[win_combo[1]]
    position_3 = board[win_combo[2]]

    position_1 == "X" && position_2 == "X" && position_3 == "X" ||
    position_1 == "O" && position_2 == "O" && position_3 == "O"
  end
end

# Check to see if the board is full
#=> all tokens == X or O
def full?(board)
  board.all? do |token|
    token == "X" || token == "O"
  end
end

# Check to see if the game was a draw -
#=> full?() is true
#=> won?() is false
def draw?(board)
  full?(board) && !won?(board)
end

# Check to see if the game is over
#=> draw?() is true
#=> OR
#=> won?() is true
def over?(board)
  draw?(board) ||
  won?(board)
end

# Check to see who the winner was X or O
#=> if won() = true
#=> determine if the board[0] is X or O
def winner(board)
  if won?(board)
    board[won?(board)[0]]
  end
end

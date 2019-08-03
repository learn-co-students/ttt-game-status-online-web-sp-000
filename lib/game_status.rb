# Helper Method
board = ["X", "X", "X", " ", " ", " ", " ", " ", " "]
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
	[0, 1, 2],
	[3, 4, 5],
	[6, 7, 8],
	[0, 3, 6],
	[1, 4, 7],
	[2, 5, 8],
	[0, 4, 8],
	[2, 4, 6],
]
# won? is called with arguement board. won? looks through the WIN_COMBINATIONS and calls all it finds w_index.
# then it check that board[w_index[0]] is the same as board[w_index[1]] etc. last it call #position_taken to check
# that the spots are occupied and not blank
def won?(board)
  WIN_COMBINATIONS.detect do |w_index|
    board[w_index[0]] == board[w_index[1]] &&
    board[w_index[1]] == board[w_index[2]] &&
    position_taken?(board, w_index[0])
  end
end

def full?(board)
  board.all? do |blank|
    blank == "X" || blank == "O"
  end
end

def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
  won?(board) || full?(board) || draw?(board)
end

def winner(board)
  if win = won?(board)
    board[win.first]
  end
end

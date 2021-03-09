# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end


# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0, 1, 2], # Top row
  [3, 4, 5], # Middle row
  [6, 7, 8], # Bottom row
  [0, 3, 6], # Left column win
  [1, 4, 7], # Middle column win
  [2, 5, 8], # Right column win
  [0, 4, 8], # Left to right downward diagonal
  [2, 4, 6]  # Left to right upward diagonal
]

def won?(board)
  WIN_COMBINATIONS.detect do |combination|
    board[combination[0]] == board[combination[1]] && 
    board[combination[1]] == board[combination[2]] && 
    position_taken?(board, combination[0])
  end
end


def full?(board)
  board.all? do |element| 
  element == "X" || element == "O"
  end
end

def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
  won?(board) || full?(board)
end

def winner(board)
  if won?(board)
    board[won?(board).first]
  else
    nil
  end
end
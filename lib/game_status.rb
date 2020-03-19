require "pry"

# Helper Method
# ––––––––
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
# ––––––––
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5], # Middle row
  [6,7,8], # Bottom row
  [0,3,6], # Left column
  [1,4,7], # Middle column
  [2,5,8], # Right column
  [0,4,8], # Left-to-right diagonal
  [2,4,6]  # Right-to-left diagonal
]


# The #won? method that returns 'true' if there is a win and 'false' if not
def won?(board)
  
  # Iterates through WIN_COMBINATIONS and finds first matching win_combination and returns the winning array.
  WIN_COMBINATIONS.detect do |win_combination|
  
  # Each 'win_index' returns the first, second, and third elements of each winning combo array.
  win_index_1 = win_combination[0]
  win_index_2 = win_combination[1]
  win_index_3 = win_combination[2]
  
  # Each 'position' uses the indices from the winning combos and applies them to the 'board' array.
  position_1 = board[win_index_1]
  position_2 = board[win_index_2]
  position_3 = board[win_index_3]
  
  # Takes first win_combination and checks to see if they are all "X"'s or "O"'s and that the string is not empty.
  position_1 == position_2 && position_2 == position_3 && position_taken?(board, win_index_1)
  end
end


# Returns 'true' for a draw and 'false' for an in-progress game.
# ––––––––
def full?(board)
  # If no 'board_position'/s are empty, returns 'true'. If 'board_position'/s remain empty, returns 'false'.
  if board.none? {|board_position| board_position == " "}
    true
  end
end


# Accepts a 'board' and returns 'true' if the board has not been won but is full, 'false' if the board is not won and the board is not full, and 'false' if the board is won.
# ––––––––
def draw?(board)
  # board is full, but not won
  if full?(board) && !won?(board)
    true
  # board is not full and not won
  elsif full?(board) == false
    false
  # false for game won in first row or game won diagonally
  # elsif won?(board) == [0,1,2] || won?(board) == [0,4,8] || won?(board) == [2,4,6]
  #   false
  end
end

# Accepts a 'board' and returns 'true' for a draw, a won game w/ full board, won game w/ incomplete board, and returns 'false' for an in-progress game.
# ––––––––
def over?(board)
  if full?(board) && won?(board)
    true
  elsif won?(board)
    true
  elsif !full?(board) && !won?(board)
    false
  elsif draw?(board)
    true
  end
end

# Returns 'X' or 'O' depending on winning token of game.
# ––––––––
def winner(board)
  if won?(board)
    board[won?(board)[0]]
  end
end
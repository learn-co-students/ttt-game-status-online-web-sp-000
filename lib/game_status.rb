# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
    [0,1,2], # Top row
    [3,4,5], # Middle row
    [6,7,8], # Bottom row
    [0,3,6], # Left vertical
    [1,4,7], # Middle vertical
    [2,5,8], # Right vertical
    [0,4,8], # left diagonal
    [2,4,6] # right diagonal
]
# won? method
def won?(board)
WIN_COMBINATIONS.detect do |win_combination|
  win_index_1 = win_combination[0]
  win_index_2 = win_combination[1]
  win_index_3 = win_combination[2]

  position_1 = board[win_index_1]
  position_2 = board[win_index_2]
  position_3 = board[win_index_3]

  position_1 == position_2 && position_2 == position_3 && position_taken?(board, win_index_1)
    #if position_taken?(board, win_index_1) && position_1 == position_2 && position_2 == position_3
    #  return win_combination
  end
end

# Build a method #over? that accepts a board and returns true if the board has
# been won, is a draw, or is full. You should be able to compose this method
# solely using the methods you used above with some ruby logic.
def over?(board)
  if draw?(board) || won?(board) || full?(board)
    return true
  end
end

# The #full? method should accept a board and return true if every element
# in the board contains either an "X" or an "O". For example:
def full?(board)
  if board.all? {|i| i == "X" || i == "O"}
  else
    return false
end

# Build a method #draw? that accepts a board and returns true if the board has
# not been won but is full, false if the board is not won and the board is not
# full, and false if the board is won. You should be able to compose this method
# solely using the methods you used above with some ruby logic.
def draw?(board)
  if !won?(board) && full?(board)
    return true
  elsif !won?(board) && !full?(board)
    return false
  else won?(board)
    return false
    end
  end
end

# The #winner method should accept a board and return the token, "X" or "O" that
# has won the game given a winning board.
# The #winner method can be greatly simplified by using the methods and their
# return values you defined above.
def winner(board)
  if won?(board)
    return board[won?(board)[0]]
  end
end

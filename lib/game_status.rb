require "pry"
# Helper Method

def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 4, 8],
  [6, 4, 2],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8]
]

def won?(board)
  WIN_COMBINATIONS.detect do |win_combination|
win_index_1 = win_combination[0]
win_index_2 = win_combination[1]
win_index_3 = win_combination[2]

position_1 = board[win_index_1] # load the value of the board at win_index_1
position_2 = board[win_index_2] # load the value of the board at win_index_2
position_3 = board[win_index_3] # load the value of the board at win_index_3

position_1 == position_2 && position_2 == position_3 && position_taken?(board, win_index_2)
end
end

board = ["X", "O", "X", "O", "X", "X", "O", "X", "O"]
def full?(board)
  board.all? do |player|
    # binding.pry
    player == "X" || player == "O"
  end
end

board = ["X", "O", "X", "O", "X", "X", "O", "X", "O"]
def draw?(board)
    # binding.pry
    full?(board) && !won?(board)
end

def over?(board)
  full?(board) || draw?(board) || won?(board)
end

def winner(board)
  if won?(board)
  board[won?(board)[0]]
end
end

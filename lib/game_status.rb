# Helper Method
def position_taken?(board, index)
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

def won?(board)
  WIN_COMBINATIONS.find do |win_array|
    win_array.all? {|i| board[i] == "X"} || win_array.all? {|i| board[i] == "O"}
  end
end

# board = [" ", " ", " ", " ", " ", " ", " ", " ", " ",]
# board = ["X", "X", "X", " ", " ", " ", " ", " ", " ",]
# board = ["O", "O", "O", " ", " ", " ", " ", " ", " ",]
# board = ["X", "X", "O", " ", " ", " ", " ", " ", " ",]
#
# win_array = [0,1,2]

def full?(board)
  board.none? {|i| i == " "}
end

def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
  won?(board) || full?(board) || draw?(board)
end

def winner(board)
  if won?(board).kind_of?(Array)
    board[won?(board)[0]]
  end
end

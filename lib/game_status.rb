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
  WIN_COMBINATIONS.find do |combo|
    combo.all?{|i| board[i] == "X" } || combo.all?{|i| board[i] == "O"}
  end
end

def full?(board)
  board.all?{|i| i == "X" || i == "O"}
end

def draw?(board)
  true if !won?(board) && full?(board)
end

def over?(board)
  true if won?(board) || draw?(board)
end

def winner(board)
  if WIN_COMBINATIONS.any?  {|combo| combo.all?{|i| board[i] == "X"}}
    "X"
  elsif WIN_COMBINATIONS.any?  {|combo| combo.all?{|i| board[i] == "O"}}
    "O"
  end
end

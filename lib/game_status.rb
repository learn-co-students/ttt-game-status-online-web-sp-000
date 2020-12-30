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


board = ["X", "X", "X", " ", " ", " ", " ", " ", " "]
def won?(board)
  board.any?{|i| i == "X" || i == "O"}
  board.each_index.select{|i| board[i] == "X"}
  puts "#{WIN_COMBINATIONS[1].all?{|j| board[j] == "X"}}"
end

won?(board)

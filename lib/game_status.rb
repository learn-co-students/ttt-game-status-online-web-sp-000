def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [6, 4, 2]
]

def won?(board)
  WIN_COMBINATIONS.detect do |i|
   board[i[0]] == "X" && board[i[1]] == "X" && board[i[2]] == "X" || board[i[0]] == "O" && board[i[1]] == "O" && board[i[2]] == "O"
 end
end


def full?(board)
  board.all? {|i| i == "X" || i == "O"}
end


def draw?(board)
  !won?(board) && full?(board)
end

def over?(board)
  won?(board) || draw?(board)
end

def winner(board)
  WIN_COMBINATIONS.detect do |i|
   if board[i[0]] == "X" && board[i[1]] == "X" && board[i[2]] == "X"
     return "X"
   elsif
     board[i[0]] == "O" && board[i[1]] == "O" && board[i[2]] == "O"
     return "O"
   end
 end
end

# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2], # top row
  [3, 4, 5], # middle row
  [6, 7, 8], # bottom row
  [0, 3, 6], # left column
  [1, 4, 7], # middle column
  [2, 5, 8], # right column
  [6, 4, 2], # / diagonal
  [0, 4, 8] # \ diagonal
]

def won?(board)
  WIN_COMBINATIONS.each do | winning_combination |
    if (board[winning_combination[0]] == "X" && board[winning_combination[1]] == "X" && board[winning_combination[2]] == "X") || (board[winning_combination[0]] == "O" && board[winning_combination[1]] == "O" && board[winning_combination[2]] == "O")
      return winning_combination
    else
      false
    end
  end
  false
end

def full?(board)
  board.all? {|space| (space == "X" || space == "O")}
end

def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
  draw?(board) || won?(board) || full?(board)
end

def winner(board)
  won?(board) ? board[won?(board)[0]] : nil
end

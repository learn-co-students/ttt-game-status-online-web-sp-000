# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS =[
  [0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]
]
def won?(board)
  WIN_COMBINATIONS.detect do |combo|
    board[combo[0]] == board[combo[1]] &&
    board[combo[1]] == board[combo[2]] &&
    position_taken?(board, combo[0])
  end
end

def full?(board)
  board.all? do |token|
    token == "X" or token == "O"
  end
end

def draw?(board)
  if won?(board)
    return false
  elsif full?(board)
    return true
  end
end

def over?(board)
  draw?(board) || won?(board)
end

def winner(board)
  if winning_combo = won?(board)
    board[winning_combo[0]]
  end
end

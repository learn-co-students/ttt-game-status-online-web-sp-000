require "pry"
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
    [2,4,6],
  ]


def won?(board)
  WIN_COMBINATIONS.detect do |win|
    board[win[0]] == board[win[1]] && board[win[2]] == board[win[0]] && position_taken?(board, win[0])
  end
end

def full?(board)
  board.all? do |index|
    if index == "X" || index == "O"
    true
  else
    false
  end
end
end

def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
  draw?(board) || full?(board) || won?(board)
end

def winner(board)

    win = won?(board)
  if won?(board)
     "#{board[win[0]]}"
  else
end
end
# def winner(board)
#   if won?(board)
#     puts "#{board[win[0]]}"
#   end
# end

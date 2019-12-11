require "pry"

def won?(board)
  WIN_COMBINATIONS.each do |combination|
    if board[combination[0]] == board[combination[1]] && board[combination[1]] == board[combination[2]] && position_taken?(board, combination[0])
      return combination
    end
  end
  false
end

def full?(board)
  board.all?{ |x| x != " " }
end

def draw?(board)
  !won?(board) && full?(board)
end

def over?(board)
  draw?(board) || won?(board)
end

def winner(board)
  if won?(board)
    if board[won?(board)[0]] == "X"
      return "X"
    else
      return "O"
    end
  else
    nil
  end
end

# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0, 1, 2], 
  [3, 4, 5], 
  [6, 7, 8],

  [0, 3, 6], 
  [1, 4, 7], 
  [2, 5, 8], 

  [0, 4, 8], 
  [2, 4, 6]
]
require "pry"
# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],[3,4,5],[6,7,8],
  [0,3,6],[1,4,7],[2,5,8],
  [0,4,8],[2,4,6]
]

def won?(board)
  WIN_COMBINATIONS.find do |combo|
  board[combo[0]] == board[combo[1]] && board[combo[2]] == board[combo[1]] && position_taken?(board, combo[0])
  end
end

def full?(board)
  board.find do |token|
    if token == " "
    return false
   end
end
true
end

def draw?(board)
  if full?(board) == true && !won?(board)
  return true

  else
  return false
  end
end

def over?(board)

  if draw?(board) == true || full?(board) == true || !!won?(board) == true
    return true

  else
    return false
  end
end

def winner(board)
  if combo = won?(board)
    return board[combo[0]]
# #  elsif !!won?(board) == true && ["O","O","O"]
#     return "O"
# else
#  nil
  end
end

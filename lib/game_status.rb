# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],  # Middle row
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]


def won?(board)
  WIN_COMBINATIONS.each do |wincombo|
   if (board[wincombo[0]]) == "X" && (board[wincombo[1]]) == "X" && (board[wincombo[2]]) == "X"
     return wincombo
    elsif (board[wincombo[0]]) == "O" && (board[wincombo[1]]) == "O" && (board[wincombo[2]]) == "O"
      return wincombo
    end
  end
  false
end

def full?(board)
  board.all? {|i| i == "X" || i == "O"}
  end

def draw?(board)
  if !won?(board) && full?(board)
    return true
  elsif won?(board)
    return false
  else !won?(board) && !full?(board)
    return false
  end
end

def over?(board)
  if won?(board) || full?(board) || draw?(board)
    return true
  end
end

def winner(board)
if won?(board)
  return board[won?(board)[0]]
end
end

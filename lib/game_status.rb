
# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]
#if board[top_row_win[0]] == "X" && board[top_row_win[1]] == "X" && board[top_row_win[2]] == "X"

def won?(board)
WIN_COMBINATIONS.each do | win_combination |
position_1 = board[win_combination[0]]
position_2 = board[win_combination[1]]
position_3 = board[win_combination[2]]

if
  position_1 == "X" && position_2 == "X" && position_3 == "X"
  return win_combination

elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
  return win_combination
  end
end
return false
end



def full?(board)
board.all? do |board|
board == "X" || board =="O"
end
end

def draw?(board)
if !won?(board) && full?(board)
  return true
else
  return false
end
end

def over?(board)
  if won?(board) || full?(board) || draw?(board)
    true

  else
    false
  end
end


def winner (board)
  index = won?(board)
  if index == false
    return nil
  else
    if board[index[0]] == "X"
      return "X"
    else
      return "O"
    end
  end
end

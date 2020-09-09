# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]

def won?(board)
  WIN_COMBINATIONS.each do |win_arrays|
    pos1 = win_arrays[0]
    pos2 = win_arrays[1]
    pos3 = win_arrays[2]
    if board[pos1] == "X" && board[pos2] == "X" && board[pos3] == "X" || board[pos1] == "O" && board[pos2] == "O" && board[pos3] == "O"
      return win_arrays
    end
  end
  return false
end

def full?(board)
  board.each do |i|
    if i != "X" && i != "O"
     return false
    end
  end
  return true
end

def draw?(board)
  if !won?(board) && full?(board)
    true
  else
    false
  end
end

def over?(board)
  if won?(board) || draw?(board)
    true
  end
end

def winner(board)
  if won?(board)
  winner_index = won?(board)
  index = winner_index[0]
  return board[index]
 else
   return nil
  end
end

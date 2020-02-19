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

def won?(board)
  if board.all?(" ")
    return false
  end
  WIN_COMBINATIONS.each do |win_combo|
    win_idx1 = win_combo[0]
    win_idx2 = win_combo[1]
    win_idx3 = win_combo[2]
    if board[win_idx1] == "X" && board[win_idx2] == "X" && board[win_idx3] == "X"
      return win_combo
    elsif board[win_idx1] == "O" && board[win_idx2] == "O" && board[win_idx3] == "O"
      return win_combo
    end
  end
  return false
end

def full?(board)
  board_checker = board.select do |space|
    space == " "
  end
  if board_checker.size > 0
    return false
  else
    return true
  end
end

def draw?(board)
  if full?(board) && !won?(board)
    return true
  end
  return false
end

def over?(board)
  if won?(board) || draw?(board)
    return true
  end
  return false
end

def winner(board)
  if won?(board) != false
    winning_combo = won?(board)
    return board[winning_combo[0]]
  end
  return nil
end

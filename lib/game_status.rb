# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], #Top_row
  [3,4,5], #Middle_row
  [6,7,8], #bottom_row
  [0,3,6], #column_1
  [1,4,7], #column_2
  [2,5,8], #column_3
  [0,4,8], #diagonal_1
  [2,4,6] #diagonal_2
]

def won?(board)
  WIN_COMBINATIONS.each do|win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]

    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      return win_combination
    elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
      return win_combination
    end
  end
  return false
end

def full?(board)
  board.all? do|full|
    full == "X" || full == "O"
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
  if won?(board) || draw?(board)
    return true
  else
    return false
  end
end

def winner(board)
  index = []
  index = won?(board)
  if index ==false
    return nil
  else
    if board[index[0]] == "O"
      return "O"
    else
      return "X"
    end
  end
end

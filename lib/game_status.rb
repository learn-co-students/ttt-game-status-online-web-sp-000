# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end


WIN_COMBINATIONS = [
  [0,1,2], #Top row
  [3,4,5], #Middle row
  [6,7,8], #Bottom row
  [0,3,6], #First column
  [1,4,7], #Second column
  [2,5,8], #Third column
  [0,4,8], #LR Diagonal
  [2,4,6], #RL Diagonal
]


def line_taken?(board, win_combination)
  win_index_1 = win_combination[0] #assigning the first position in the hypothetical winning array to value 'win_index_1'
  win_index_2 = win_combination[1]
  win_index_3 = win_combination[2]

  if position_taken?(board, win_index_1) == true &&
    position_taken?(board, win_index_2) == true &&
    position_taken?(board, win_index_3) == true
    return true
  else
    return false
  end
end
#checks whether the win_combination has a value inputted on all 3 indexes


def matching_values?(board, win_combination)
  win_index_1 = win_combination[0] #assigning the first position in the hypothetical winning array to value 'win_index_1'
  win_index_2 = win_combination[1]
  win_index_3 = win_combination[2]

  value_1 = board[win_index_1] #pulling the actual values as passed through the board array and assigning to value 'value_1'
  value_2 = board[win_index_2]
  value_3 = board[win_index_3]

  if value_1 == value_2 && value_1 == value_3
    return true
  else
    return false
  end
end
#checks whether all inputs values for winning combination are the same


def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
     #because this is a loop, it will move through all hypothetical arrays
    if line_taken?(board, win_combination) == true && matching_values?(board, win_combination) == true
      return win_combination #return the win_combination indexes that won.
    end
  end
  return nil
end


def full?(board)
  board.each do |board_position|
    if board_position != "X" && board_position != "O"
      return false
    end
  end
  return true
end

def draw?(board)
  if full?(board) == true && won?(board) == nil
    return true
  else
    return false
  end
end

def over?(board)
  if won?(board) != nil || draw?(board) == true
    return true
  else
    return false
  end
end

def winner(board)
  win_combination = won?(board) 
  if win_combination != nil
    winning_position = win_combination[0]
    return board[winning_position]
  else
    return nil
  end
end

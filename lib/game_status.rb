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

def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]
    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]
    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      win_combination
    elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
      win_combination
    else
      FALSE
    end  
  end
end

def full?(board)
  board.each do |board_space|
    if board_space == " " || board_space == nil
      FALSE
    else 
      TRUE
    end
  end
end

def draw?(board)
  if full?(board) == TRUE & won?(board) == FALSE
    TRUE
  else
    FALSE
  end
end

def over?(board)
  if won?(board) == TRUE || full?(board) == TRUE || draw?(board) == TRUE
    TRUE
  else
    FALSE
end

def winner(board)
  if won?(board)[0] = "X"
    "X"
  elsif won?(board)[0] = "O"
    "O"
  else
    FALSE
  end
end
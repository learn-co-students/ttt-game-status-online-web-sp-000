# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0, 1, 2], #top_row_win
  [3, 4, 5], #middle_row_win
  [6, 7, 8], #bottom_row_win
  [0, 3, 6], #left_colum_win
  [1, 4, 7], #middle_colum_win
  [2, 5, 8], #right_colum_win
  [0, 4, 8], #diagonal_l_to_r_win
  [2, 4, 6] #diagonal_r_to_l_win

]

def won?(board)
WIN_COMBINATIONS.each do |single_win_combo|
  win_index_1 = single_win_combo[0]
  win_index_2 = single_win_combo[1]
  win_index_3 = single_win_combo[2]

  position_1 = board[win_index_1]
  position_2 = board[win_index_2]
  position_3 = board[win_index_3]

  if position_1 == position_2 && position_2 == position_3 && position_taken?(board, win_index_1)
    return single_win_combo
  end
end
return false
end

def full?(board)
  if board.any? {|index| index == " " || index == nil}
    return false
  else
    return true
  end
end

def draw?(board)
  if !won?(board) && full?(board)
    return true
  elsif won?(board) && full?(board)
    return false
  else won?(board)
    return false
  end
end

def over?(board)
  if won?(board) || draw?(board) || full?(board)
    return true
  else
    return false
  end
end

def winner(board)
  if won?(board)
    return board[won?(board)[0]]
  end
end

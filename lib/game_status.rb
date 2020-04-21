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
  if board == [" ", " ", " ", " ", " ", " ", " ", " ", " "]
    return false
  end

  i = 0
  WIN_COMBINATIONS.each do |win_combination|
      win_index_1 = win_combination[0]
      win_index_2 = win_combination[1]
      win_index_3 = win_combination[2]

      position_1 = board[win_index_1]
      position_2 = board[win_index_2]
      position_3 = board[win_index_3]

  if position_1 == ("X") && position_2 == ("X") && position_3 == ("X") || position_1 == ("O") && position_2 == ("O") && position_3 == ("O")
    return win_combination
     i += 1
  end
end

if i == 8
  return false
end

end

def full?(board)
  if won?(board)
    return true
  end
  board.each do |index|
    if index == " "
    return   false
  end
end
  board.each do |index|
    if index == "X" || "O"
    return true
  end
end
end






def draw?(board)
  if won?(board)
    return false
  end

    board.each do |index|
      if index == " "
      return   false
      end
    end
      return true

  end

def over?(board)
  if won?(board) || draw?(board) || full?(board)
    return true
  end
    return false
  end

def winner(board)
  if draw?(board) == true || full?(board) == false
    return nil
  end
  WIN_COMBINATIONS.each do |win_combination|
      win_index_1 = win_combination[0]
      win_index_2 = win_combination[1]
      win_index_3 = win_combination[2]

      position_1 = board[win_index_1]
      position_2 = board[win_index_2]
      position_3 = board[win_index_3]

  if position_1 == ("X") && position_2 == ("X") && position_3 == ("X")
    return "X"
  elsif position_1 == ("O") && position_2 == ("O") && position_3 == ("O")
    return "O"
  end

end
  end

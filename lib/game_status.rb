# Helper Method


def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end



WIN_COMBINATIONS = [
  [0,1,2], 
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [6,4,2],
  [0,4,8]  
]


def won?(board)
    WIN_COMBINATIONS.each do |win_combination|
  win_index_1 = win_combination[0]
  win_index_2 = win_combination[1]
  win_index_3 = win_combination[2]
  position_1 = board[win_index_1] # load the value of the board at win_index_1
  position_2 = board[win_index_2] # load the value of the board at win_index_2
  position_3 = board[win_index_3] # load the value of the board at win_index_3
  if position_1 == "X" && position_2 == "X" && position_3 == "X"
    return win_combination # return the win_combination indexes that won.
  end
  if position_1 == "O" && position_2 == "O" && position_3 == "O"
    return win_combination # return the win_combination indexes that won.
end
end
false
end


def full?(board)
  if board.any? {|index| index == nil || index == " "}
    return false
  else
    return true
  end
end

def draw?(board)
  if !won?(board) && full?(board)
    return true
  elsif!full?(board) && !won?(board)
    return false
  else won?(board)
    return false
  end
end

def over?(board)
  if draw?(board) || won?(board) || full?(board) 
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
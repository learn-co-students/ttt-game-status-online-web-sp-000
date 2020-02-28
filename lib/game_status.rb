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
  # If the board is empty return false
  if board.all?{|index| index == " "} == true
    return false
  end
  # If the board contains a winning combination return win_combination
  WIN_COMBINATIONS.each do |win_combination|
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
    else
      false
    end
  end
  #If the board doesn't contain any winning combinations and the board is full return false
  if board.any?{|index| index == " "} == false
    return false
  end
end

def full?(board)
  if board.any?{|index| index == " "} == false
    return true
  else
    return false
  end
end

def draw?(board)
  if full?(board) == true && won?(board) == false
    return true
  elsif won?(board) == true
    return false
  end
end

def over?(board)
  if draw?(board) == true
    return true
  elsif full?(board) == true
    return true
  elsif won?(board).class == Array && full?(board) == false
    return true
  else
    return false
  end
end

def winner(board)
  if won?(board) == nil
    return nil
  end
  index = won?(board)[0]
  if board[index] == "X"
    return "X"
  elsif board[index] == "O"
    return "O"
  else
    return nil
  end
end

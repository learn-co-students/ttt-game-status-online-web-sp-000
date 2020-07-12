
# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],  # Top Row
  [3,4,5],  # Middle Row
  [6,7,8],  # Bottom Row
  [0,4,8],  # Diagonal Right
  [2,4,6],  # Diagonal Left
  [0,3,6],  # Left Column
  [1,4,7],  # Middle Column
  [2,5,8]   # Right Column
]

def won?(board)
  WIN_COMBINATIONS.each do |win_combination|

    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]

    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

    if position_1 == "X" && position_2 == "X" && position_3 == "X" || position_1 == "O" && position_2 == "O" && position_3 == "O"
      return win_combination
    end
  end
  return false
end

def full?(board)
  board.all?{|square|
    square == "X" || square == "O"
  }
end

def draw?(board)
  if !won?(board) && full?(board)
    return true
  else
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
    x_count = 0
    o_count = 0
    board.each do |element|
      if element == "X"
      x_count += 1
      elsif element == "O"
      o_count += 1
      end
    end
    if x_count > o_count
      return "X"
    else
      return "O"
    end
  end
end

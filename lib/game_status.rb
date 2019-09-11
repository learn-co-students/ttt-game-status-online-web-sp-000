# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
 # Personal note:  Remember, each array can be labeled or marked as an index to call in our method
WIN_COMBINATIONS = [
  [0, 1, 2], #top winning row
  [3, 4, 5], #mid winning row
  [6, 7, 8], #bottom winning row
  [0, 3, 6], #top down 1st column
  [1, 4, 7], #top down 2nd column
  [2, 5, 8], #top down 3rd column
  [0, 4, 8], #diagonal 1
  [2, 4, 6], #diagonal 2
]

def won?(board)
  WIN_COMBINATIONS.each {|win_combos|
    index_0 = win_combos[0]
    index_1 = win_combos[1]
    index_2 = win_combos[2]

    position_1 = board[index_0]
    position_2 = board[index_1]
    position_3 = board[index_2]

    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      return win_combos
    elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
      return win_combos
    end
  }
  return false
end

def full?(board)
  board.all? {|index| index == "X" || index == "O"}
end

def draw?(board)
  if !won?(board) && full?(board)
    return true
  else
    return false
  end
end

def over?(board)
  if won?(board) || full?(board) || draw?(board)
    return true
  else
    return false
  end
end

def winner (board)
  index = []
  index = won?(board)
  if index == false
    return nil
  else
    if board[index[0]] == "X"
      return "X"
    else
      return "O"
    end
  end
end

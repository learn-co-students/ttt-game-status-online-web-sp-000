# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],  # Middle row
  [6,7,8],
  [0,4,8],
  [2,4,6],
  [0,3,6],
  [1,4,7],
  [2,5,8]
]


def won?(board)
  WIN_COMBINATIONS.each {|combo|
    win_index_1 = combo[0]
    win_index_2 = combo[1]
    win_index_3 = combo[2]

    position_1 = board[win_index_1] # load the value of the board at win_index_1
    position_2 = board[win_index_2] # load the value of the board at win_index_2
    position_3 = board[win_index_3] # load the value of the board at win_index_3

    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      return combo # return the win_combination indexes that won.
    elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
      return combo
    end
  }
  return false
end

def full?(board)
  board.all? do |slot|
    slot != " "
  end
end

def draw?(board)
  if full?(board)  && !won?(board)
    return true
  elsif !won?(board) && !full?(board)
    return false
  elsif won?(board) == [0,1,2]
    return false
  end
end

def over?(board)
  if full?(board) && !won?(board)
    true
  elsif won?(board) && full?(board)
    true
  elsif won?(board) && !full?(board)
    true
  end
end

def winner(board)
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


board = [" ", " ", " ", "X", "X", "X", " ", " ", " "]
won?(board)

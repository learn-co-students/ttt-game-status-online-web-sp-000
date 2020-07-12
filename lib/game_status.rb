# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5], # Middle row
  [6,7,8], # Bottom Row
  [0,3,6], # Left column
  [1,4,7], # Middle column
  [2,5,8], # Right column
  [0,4,8], # Left to Right diagonal
  [2,4,6] # Right to Left diagonal
]

def won? (board)
  WIN_COMBINATIONS.each do |win_combo|
    win_index_1 = win_combo[0]
    win_index_2 = win_combo[1]
    win_index_3 = win_combo[2]

    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

    if (position_1 == "X" && position_2 == "X" && position_3 == "X") || (position_1 == "O" && position_2 == "O" && position_3 == "O")
       return win_combo
    end
  end
  false
end

def full? (board)
  board.all? do |moves|
    moves == "X" || moves == "O"
  end
end

def draw? (board)
  if won?(board)
    false
  else
    if full?(board)
      true
    else
      false
    end
  end
end

def over? (board)
  if won?(board)
    true
  elsif draw?(board)
    true
  else
    false
  end
end

def winner(board)
  if won?(board)
   return board[won?(board)[0]]
  else
    return nil
  end
end

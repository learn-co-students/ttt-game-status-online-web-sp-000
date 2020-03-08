# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,4,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [2,4,6]
]

def won?(board)
  WIN_COMBINATIONS.each do |win_combo|
    index_0 = win_combo[0]
    index_1 = win_combo[1]
    index_2 = win_combo[2]

    slot_1 = board[index_0]
    slot_2 = board[index_1]
    slot_3 = board[index_2]

    if slot_1 == "X" && slot_2 == "X" && slot_3 == "X"
      return win_combo
    elsif slot_1 == "O" && slot_2 == "O" && slot_3 == "O"
      return win_combo
    end
  end
  false
end

def full?(board)
  board.all? do |index|
    if index == "X" || index == "O"
      true
    end
  end
end

def draw?(board)
  if !won?(board) && full?(board)
    true
  end
end

def over?(board)
  if won?(board) || full?(board) || draw?(board)
    true
  end
end

def winner(board)
  index = won?(board)
  if index == false
    nil
  elsif board[index[0]] == "X"
     return "X"
  elsif board[index[0]] == "O"
    return "O"
  end
end

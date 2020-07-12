# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6, 7, 8], 
  [0, 4, 8], 
  [2, 4, 6], 
  [0, 3, 6], 
  [1, 4, 7], 
  [2, 5, 8]
]

def won?(board = ["X", "X", "X", " ", " ", " ", " ", " ", " "])
  WIN_COMBINATIONS.each do |combination|
    curr_values = []
    combination.each do |cur_index|
      curr_values << board[cur_index]
    end
    if curr_values.all? {|value| value == "X"} || curr_values.all? {|value| value == "O"}
      return combination
    end
  end
  return false
end

def full? (incomplete_board)
  if incomplete_board.all? {|space| space == "X" || space == "O"}
    return true
  else
    return FALSE
  end
end

def draw? (board)
  if won?(board) == false && full?(board) == true
    return true
  elsif won?(board) == false && full?(board) == FALSE
    return false
  else
    return false
  end
end

def over? (board)
  if won?(board) != false || full?(board) == true || draw?(board) == true
    return true
  else
    return false
  end
end

def winner(board)
  if won?(board) != false
    indexes = won?(board)
    return board[indexes[0]]
  end
end
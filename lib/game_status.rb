# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [2,5,8],
  [7,4,1],
  [0,3,6],
  [0,4,8],
  [6,4,2]
]

def won?(board)
  hold_array = []

  WIN_COMBINATIONS.each do |combo|
    combo.each do |index|
    hold_array << board[index] if position_taken?(board, index)
  end
  if hold_array.length == 3 && hold_array.uniq.length == 1
    return combo
  else
    hold_array.clear
  end
end
  false
end

def full?(board)
  board.all? { |pos| pos == "X" || pos == "O"}
end

def draw?(board)
  if full?(board) && !won?(board)
    return true
  else
    return false
  end
end

def over?(board)
  return true if won?(board)
  return true if draw?(board)
end

def winner(board)
  hold_array = []

  WIN_COMBINATIONS.each do |combo|
    combo.each do |index|
      hold_array << board[index] if position_taken?(board, index)
    end
    if hold_array.length == 3 && hold_array.uniq.length == 1
      winner = hold_array.uniq.first
      return winner
    else
      hold_array.clear
    end
  end
  nil
end

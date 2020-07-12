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

# won?
def won?(board)
  WIN_COMBINATIONS.each do |combo|
    if board[combo[0]] != " " && board[combo[0]] == board[combo[1]] && board[combo[0]] == board[combo[2]]
      return combo
    end
  end
  nil 
end

# full?
def full?(board)
  is_full = board.all? do |el|
    el == "X" || el == "O"
  end
  is_full
end

# draw?
def draw?(board)
  is_draw = false 
  
  if full?(board) && !won?(board)
    is_draw = true 
  end
  
  is_draw
end

# over?
def over?(board)
  is_over = false 
  if won?(board) || draw?(board) || full?(board)
    is_over = true 
  end
  is_over
end

# winner
def winner(board)
  if won?(board)
    return board[won?(board)[0]]
  else
    return nil 
  end
end
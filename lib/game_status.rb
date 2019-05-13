# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

  WIN_COMBINATIONS = [
  
  [0,1,2], #Top row
  [3,4,5], #Middle row
  [6,7,8], #Bottom row
  [0,3,6], #Left column
  [1,4,7], #Middle column
  [2,5,8], #Right column
  [0,4,8], #Left to right diagnol
  [2,4,6], #Right to left diagnol
  
  ]
  
def won?(board)
  WIN_COMBINATIONS.each do |c|
    first_pos = board[c[0]]
    second_pos = board[c[1]]
    third_pos = board[c[2]]
    
    return c if (first_pos == second_pos) && (second_pos == third_pos) && position_taken?(board, c[0])
  end
  
  false
end

def full?(board)
  board.each do |x|
    if x == " "
      return false
    else 
      true
    end
  end
end

def draw?(board)
  return true if full?(board) && !won?(board)
  false
end

def over?(board)
  if won?(board) || full?(board) || draw?(board)
    return true
  else
    false
  end
end

def winner(board)
  if won?(board)
    return "X" if board[won?(board)[0]] == "X"
    "O"
  end
end
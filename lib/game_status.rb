# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5], # Middle row
  [6,7,8], # Bottom row
  [0,3,6], # Left column
  [1,4,7], # Middle column
  [2,5,8], # Right column
  [0,4,8], # Left diagonal
  [2,4,6]  # Right diagonal
]

def won?(board)
  WIN_COMBINATIONS.each do |combo|

    pos1 = combo[0]
    pos2 = combo[1]
    pos3 = combo[2]

    if board[pos1] == "X" && board[pos2] == "X" && board[pos3] == "X"
        return combo
      elsif board[pos1] == "O" && board[pos2] == "O" && board[pos3] == "O"
        return combo
    end
  end
  false
end

def full?(board)
  board.all? {|i| i == "X" || i == "O"}
end

def draw?(board)
  if full?(board) && !won?(board)
    return true
  else
    false
  end
end

def over?(board)
  true if won?(board) || full?(board) || draw?(board)
end

def winner(board)
  board[won?(board)[0]] if won?(board)
end


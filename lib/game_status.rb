# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
    [0,1,2], # Top
    [3,4,5], # Middle
    [6,7,8], # Bottom
    [0,3,6], # Left
    [1,4,7], # Middle
    [2,5,8], # Right
    [0,4,8], # back diagonal
    [2,4,6] # forward diagonal
  ]
  
def won?(board)
    WIN_COMBINATIONS.detect do |combination|
      board.values_at(combination[0],combination[1],combination[2]) == ['X', 'X', 'X'] || board.values_at(combination[0],combination[1],combination[2]) == ['O', 'O', 'O'] 
    end
end

def full?(board)
  not board.detect{|position| position == " "}
end

def draw?(board)
  if (not !!won?(board)) && !!full?(board) 
    true
  end
end

def over?(board)
  if won?(board) || full?(board) || draw?(board)
    true
  end
end

def winner(board)
  if !!won?(board)
    board[won?(board)[0]]
  end
end

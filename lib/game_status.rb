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
  
def won?(board)
  WIN_COMBINATIONS.each do |win_combinations|
    if win_combinations.all? { |i| board[i] == "X" }
      return win_combinations
    elsif win_combinations.all? { |i| board[i] == "O"}
      return win_combinations
   end
  end
 FALSE
end

def full?(board)
  if board.all? {|i| i == "X" || i == "O"}
    return true
  end
end

def draw?(board)
    if !won?(board) && full?(board)
      return true
    end
end

def over?(board)
  if won?(board) || draw?(board) || full?(board)
    return true
  end
end

def winner(board)
  if won?(board)
    board[won?(board)[0]]
  end
end
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
  WIN_COMBINATIONS.detect do |combination|
    win1=combination[0]
    win2=combination[1]
    win3=combination[2]
    # looping and saving first 3 numbers in arrays to variables using indexes
    board[win1] == board[win2] && board[win2] == board[win3] && board[win1] != " "
    # using variables with board array to check if they match
  end  
end

def full?(board)
  board.none? {|i| i==" " }
end

def draw?(board)
  if !won?(board) && full?(board)
    return true
    elsif !won?(board) && !full?(board)
    return false
    elsif won?(board)
    return false
  end  
end

def over?(board)
  if won?(board) 
    return true
    elsif draw?(board)
      return true
      elsif full?(board)
        return true
  end
end

def winner(board)
  win_combination=won?(board)
  if win_combination
    winning_location=win_combination[0]
    board[winning_location]
  else
    nil
  end
end

# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6]
]

def won? (board)
  WIN_COMBINATIONS.each do |combination|
    index1 = combination[0]
    index2 = combination[1]
    index3 = combination[2]
    
    if (board[index1] == "X" && board[index2] == "X" && board[index3] == "X") || (board[index1] == "O" && board[index2] == "O" && board[index3] == "O")
      return combination
    end
    
  end
  return false
end

def full?(board)
  board.all? do |value|
    value != " "
  end
end

def draw?(board)
  (!won?(board) && full?(board))
end

def over?(board)
  won?(board) || draw?(board) || full?(board)
end

def winner(board)
  winning_comb = won?(board)
  if winning_comb == false
    return nil
  elsif
    index = winning_comb[0]
  
    if board[index] == "X"
      return "X"
    elsif board[index] == "O"
      return "O"
    end
  end
end
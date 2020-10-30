# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS =[ [0,1,2] , [3,4,5] , [6,7,8] , [0,3,6] , [1,4,7] , [2,5,8] , [0,4,8] , [2,4,6] ]

def won?(board)
  WIN_COMBINATIONS.each do |x|
    index = x[0]
    index1 = x[1]
    index2 = x[2]

    position_1 = board[index]
    position_2 = board[index1]
    position_3 = board[index2]

    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      return x
    elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
      return x
    end
  end
  return false
end

def full?(board)
  board.all? do |index|
     index == "X" || index == "O"
   end
end

def draw?(board)
  if !won?(board) && full?(board)
    return true
  else
    return false
  end
end

def over?(board)
  if won?(board) || full?(board) || draw?(board)
    return true
  else
    return false
  end
end

def winner(board)
  if won?(board) == false
    return nil
  elsif board[won?(board)[0]] == "X"
    return "X"
  else
    return "O"
  end
end

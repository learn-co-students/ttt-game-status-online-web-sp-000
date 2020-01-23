# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2], #first horizontal WIN_COMBINATION 
  [3, 4, 5], #second 
  [6, 7, 8], #third 
  [0, 3, 6], #first vertical WIN_COMBINATION
  [1, 4, 7], #second
  [2, 5, 8], #third
  [0, 4, 8], #first diagonal WIN_COMBINATION
  [6, 4, 2]  #second
]

def won?(board)
  WIN_COMBINATIONS.each {|win_combination| #creates new variable to iterate through the constant
    index_1 = win_combination[0] #grabs the index of a winning combination at index of each ele
    index_2 = win_combination[1] #([0,1,2]) = index of each element in the constant
    index_3 = win_combination[2] #index stores position of winning combinations 

    position_1 = board[index_1] #loads value of the board at the index 1 
    position_2 = board[index_2] #loads value of the board at the index 2
    position_3 = board[index_3] #loads value of the board at the index 3

    if position_1 == "X" && position_2 == "X" && position_3 == "X" #checks each board position and                                                              #and compares to winning index
      return win_combination
    elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
      return win_combination
    end
  }
  return false
end

def full?(board)
  board.all? {|index| index == "X" || index == "O"}
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

def winner (board)
  index = []
  index = won?(board)
  if index == false
    return nil
  else
    if board[index[0]] == "X"
      return "X"
    else
      return "O"
    end
  end
end
# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0,1,2],  # top row | index 0 
  [3,4,5],  # middle row | index 1
  [6,7,8],  # bottom row | index 2
  
  [0,3,6],  # left column | index 3
  [1,4,7],  # middle column | index 4
  [2,5,8],  # right column | index 5
  
  [0,4,8],  # top left to bottom right | index 6
  [2,4,6]   # top right to bottom left | index 7
  ]



# return true if there is a win, false if not 

def won?(board)
  WIN_COMBINATIONS.each  do |win_combo|
    win_index_1 = win_combo[0]
    win_index_2 = win_combo[1]
    win_index_3 = win_combo[2]
    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]
    
    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      return win_combo
    elsif 
      position_1 == "O" && position_2 == "O" && position_3 == "O"
        return win_combo
    elsif
      false
    end
  end
  
  if board.all?{|i| i == " "}
    return false
  else
    board.any?{|i| i == " "}
      return false 
  end
end


def full?(board)
  if board.all?{|i| i == "X" || i == "O"}
    return true
  else
    board.any?{|i| i == " "}
      return false
  end
end

def draw?(board)
  if won?(board) == false && full?(board) == true
    return true
  else
    return false
  end
end

def over?(board)
  if won?(board) || draw?(board) || full?(board)
    return true 
  end
end

def winner(board)
  
  if won?(board)
    winning_array = won?(board)
    i = winning_array[0]
    return board[i]
  end
end


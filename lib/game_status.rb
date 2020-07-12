# Helper Method

def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 4, 8],
  [2, 4, 6],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8]
  ]
  
def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    win_1 = win_combination[0]
    win_2 = win_combination[1]
    win_3 = win_combination[2]
      
    pos_1 = board[win_1]
    pos_2 = board[win_2]
    pos_3 = board[win_3]

  if(pos_1 == "X" && pos_2 == "X" && pos_3 == "X")
    return win_combination
  elsif(pos_1 == "O" && pos_2 == "O" && pos_3 == "O")
    return win_combination
  end 
end
return false
end  
  
def full?(board)
  board.each do |pos|
    if(pos == " ")
      return false
    end  
  end  
end  
  
def draw?(board)
  full?(board) && !won?(board) 
end
  
def over?(board)
  won?(board) || draw?(board) || full?(board)
end
  
def winner(board)
  if won?(board) == false
    return nil
  else
    win = won?(board)
    return board[win[0]]
  end  
end  
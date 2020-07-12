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
  
def won?(board)
    
  winner_X_count = 0 
  winner_O_count = 0 
  
  WIN_COMBINATIONS.each do |combo| 
  win_index_1 = combo[0]
  win_index_2 = combo[1]
  win_index_3 = combo[2]

  pos_1 = board[win_index_1]
  pos_2 = board[win_index_2]
  pos_3 = board[win_index_3]
  
    if (pos_1 == "X" && pos_2 == "X" && pos_3 == "X") 
      winner_X_count += 1
      return combo
    elsif (pos_1 == "O" && pos_2 == "O" && pos_3 == "O")
      winner_O_count += 1
      return combo
    else
      false 
    end #end if
  end #end do
 
#return false if empty board 
 board.none? do |value|
   value == " "
 end 
 
 if winner_O_count == winner_X_count 
   false 
  end 
 
end


def full?(board)
  board.all? do |value|
    value != " "
  end

end

def draw?(board)
  if full?(board) && !won?(board)
    true 
  else
    false
  end
  
end

def over?(board)
  if won?(board) || draw?(board) || full?(board)
    true 
  elsif !full?(board)
    false 
  else 
    false
  end
  
end

def winner(board)
  result = won?(board)
  if result != false 
    return board[result[0]]
  else
    return nil 
  end 
end 

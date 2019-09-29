# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant, methods can read values from constants defined outside the method.

WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],  # Middle row
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

=begin def won?(board)
 WIN_COMBINATIONS.find do |win_combination| 
   position_taken?(board, win_combination[0]) &&
    board[win_combination[0]] == board[win_combination[1]] &&
    board[win_combination[0]] == board[win_combination[2]]
  end
end
=end 

=begin
 def won?(board)
 WIN_COMBINATIONS.each do |win_combination| 
  win_index_1 = win_combination[0]
  win_index_2 = win_combination[1]
  win_index_3 = win_combination[2]
 
  position_1 = board[win_index_1] # load the value of the board at win_index_1
  position_2 = board[win_index_2] # load the value of the board at win_index_2
  position_3 = board[win_index_3] # load the value of the board at win_index_3
 
  if position_1 == "X" && position_2 == "X" && position_3 == "X"
    return win_combination # return the win_combination indexes that won.
  else
    false
  end
end
=end
 
 
 def won?(board)
   WIN_COMBINATIONS.each do |win_combination|
     if board[win_combination]
      return true
    else
      return false
    end
end

=begin
   def full?(board)
  board.all? do |index|
    index != " "
  end
end
=end

=begin
def full?(board)
  board.all? do |index|
  if !(board[index].nil? || board[index] == " ")
   return true
 else
   return false
 end
end
=end

def full?(board)
  board.all? {|index| index == "X" || index == "O"}
end

=begin
# checks to see if the board has ended in  a draw, or that the board is full, but no one has won.
def draw?(board)
  full?(board)
  !(won?(board))
end
=end

def draw?(board)
  if full?(board) && !(won?(board))
    return true
  else
    return false
  end
end


=begin
# checks to see if the game is over either by a draw or someone won
def over?(board)
  draw?(board) || won?(board)
  full?(board)
end
=end

=begin
def over?(board)
  if won?(board) || draw?(board) || full?(board)
    return true
  else
    return false
  end
end
=end

def over?(board)
  inprogres_board = (!full?(board) && !won?(board))
  if inprogres_board
    return false
  else
    true
  end
end

  
# Declares the winner of the game by using the return value of the over? method as an index value on the board. If the won? == true, then it will return the win combo from over? as an index value for the board. It will then return that index's value.
=begin
def winner(board)
  if won?(board)
   return board[won?(board)[0]]
  end
end
=end

=begin
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
=end

def winner(board)
  index = won?(board)
  if won?(board) && index == "X"
    return "X"
  elsif won?(board) && index == "O"
  return "O"
  else
    return nil
  end
end

  
    
    
  
   
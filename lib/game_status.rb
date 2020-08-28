require 'pry'
# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [0,4,8], [1,4,7], [2,4,6,], [2,5,8]]

def won?(board)
  #binding.pry
  WIN_COMBINATIONS.each do |wc|
    #binding.pry
    win_index_1 = wc[0]
    win_index_2 = wc[1]
    win_index_3 = wc[2]
    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]
    
    if position_1 == "X" && position_2 == "X" && position_3 == "X" || position_1 == "O" && position_2 == "O" && position_3 == "O"
      return wc 
    # end
  #end 
   
    end
  end
  false
end 

def full?(board)
  board.all? do |brd|
      brd == "X" || brd == "O"
  #     return true 
  #   else 
  #     false 
  # end
end 
end 

def draw?(board)
  #returns true if the board has not been won but is full, false if the board is not won and the board is not full, and false #if the board is won.
  if !won?(board) && full?(board)
  return true 
  elsif !won?(board) && !full?(board)
  return false 
  elsif won?(board)
  return false 
else 
end 
end

def over?(board)
  #returns true if the board has been won, is a draw, or is full.
  if won?(board) || draw?(board) || full?(board)
    return true 
  else 
    return false 
  end
end 

def winner(board)
  if won?(board)
    board[won?(board)[0]]
  else 
    nil
end
end

# def winner(board)
#   winning_array = won?(board)
#   if winning_array
#     index = winning_array[0]
    
#   else 
#     nil
# end
# end
# Helper Method

require 'pry'

def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,4,8],
  [2,4,6],
  [0,3,6],
  [1,4,7],
  [2,5,8]
]

def won?(board)
  if board == [" ", " ", " ", " ", " ", " ", " ", " ", " "]
    return false
  elsif draw?(board)
    return false
  end

  WIN_COMBINATIONS.each do |combination|
    win_index_1 = combination[0]
    win_index_2 = combination[1]
    win_index_3 = combination[2]

    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]
    #binding.pry
    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      return combination

    elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
      return combination
    
    else
      
      false
      
    end
    
  end
  return false
end

def full?(board)
  if draw?(board)
    true
  else
    !board.include?(" ")
  end
end

def draw?(board)
  if board.include?(" ")
    false
  elsif (board[0] == "X" && board[1] == "X" && board[2] == "X") || (board[0] == "O" && board[1] == "O" && board[2] == "O")
    false
  elsif (board[0] == "X" && board[4] == "X" && board[8] == "X") ||
        (board[2] == "X" && board[4] == "X" && board[6] == "X") ||
        (board[0] == "O" && board[4] == "O" && board[8] == "O") ||
        (board[0] == "O" && board[4] == "O" && board[8] == "O") 
        false

  else
    true
  end
end

def over?(board)
  
  if draw?(board)
    true

  elsif board.include?(" ") && won?(board).kind_of?(Array)
    true
  
  elsif won?(board).kind_of?(Array)
    true
  
  else
    false
  end
end

def winner(board)
  if won?(board).kind_of?(Array)
    return board[won?(board)[0]]
  else
    return nil
  end
  nil
end

board = ["X", " ", "X", " ", "X", " ", "O", "O", " "]
puts won?(board)
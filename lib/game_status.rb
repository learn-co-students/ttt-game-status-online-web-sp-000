require 'pry'

# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
  #(Spot is nil OR spot is SPACE)
  #!(True if blank)
  #Position_taken? False
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
  win_result = nil
  WIN_COMBINATIONS.detect do |combo|
    position_1 = board[combo[0]]
    position_2 = board[combo[1]]
    position_3 = board[combo[2]]

    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      return combo
    elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
      return combo
    else
      false
    end
  end
end

def full?(board)
    #check each element of the board
    #if there is an element which has nil or " ", full? should return false. Otherwise true
    counter = 0
    board.all? do |i|
      return false if !position_taken?(board,counter)
      counter += 1
    end
end

def draw?(board)
  if full?(board) && !won?(board)
    return true
  elsif !full?(board) && !won?(board)
    return false
  else won?(board)
    return false
  end
  #return true if board full AND not won
  #return false if board is not full AND not won
  #return false if board is won
end

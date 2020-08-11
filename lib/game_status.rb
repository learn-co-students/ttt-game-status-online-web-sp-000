# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
#it's a constant as in it can be accessed by methods. usual variables can't be accessed and must be passed into the method

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
  WIN_COMBINATIONS.each do |combo|
    # if same value in this row/column/diag and not empty empty empty
    if ( (board[combo[0]] == board[combo[1]]) &&  (board[combo[1]] == board[combo[2]] ) && position_taken?(board, combo[0]) )
      return combo
    #critical:
    #do not put an else return nil here. or it will end the entire operation. only return nill if it's looped through EVERYTHING and still found nothing
    end
  end

  return nil
end

#hi = won?(myboard)
#puts hi

def full?(board)
  board.none? do |item|
    item == " " || item   == ""
  end
end

def draw?(board)
  if won?(board) == nil && full?(board)
    return true
  elsif won?(board) == nil && !full?(board)
    return false
  else
    return false
  end
end

drawboard = ["X", "O", "X", "O", "X", "X", "O", "X", "O"]
incomplete_board = ["X", " ", " ", " ", " ", " ", " ", " ", " "]
wonboard = ["X", "X", "X", " ", " ", " ", " ", " ", " "]
puts draw?(incomplete_board) #=> false
puts draw?(drawboard) #true
puts draw?(wonboard) #false


def over?(board)
  if draw?(board) || won?(board) || full?(board)
    return true
  else
    return false
  end
end

def winner(board)
  #ex: if winningcombo is [2,4,6], board[winningcombo[0]] = board[2] = either X or O
  winningcombo = won?(board)
  if winningcombo == nil
    return nil
  else
    return board[winningcombo[0]]
  end
end

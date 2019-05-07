# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],  # Middle row
  # ETC, an array for each win combination
  [6,7,8], #bottom row

  [0,3,6], #left column
  [1,4,7], #middle column
  [2,5,8], #right column

  [0,4,8], #top left bottom right diagonal
  [2,4,6], #top right bottol left diagonal
]

def howManyMoves(board)
  howMany = 0

  board.each do |space|

    if space == "X" || space == "O"
      howMany += 1
    end

  end

  return howMany

end


def full?(board)

  movesMade = howManyMoves(board)

  if movesMade == 9
    return true
  else
    return false
  end

end


def draw?(board)

  WIN_COMBINATIONS.each do |array|

    confirmedWin = array.all? do |index|
      board[index] == "X"
    end

    if confirmedWin == true
      return !confirmedWin
    end

    confirmedWin = array.all? do |index|
      board[index] == "O"
    end

    if confirmedWin == true
      return !confirmedWin
    end

  end

end


def over?(board)
=begin
  if draw?(board)
    return true
  end
=end
  if full?(board)
    return true
  end

  if won?(board)
    return true
  end

  return false


end


def won?(board)

  confirmedWin = false

  howMany = howManyMoves(board)

  if howMany == 0 #game not over at 0 moves
    return confirmedWin
  end

  WIN_COMBINATIONS.each do |array|

    confirmedWin = array.all? do |index|
      board[index] == "X"
    end

    if confirmedWin == true
      return array
    end

    confirmedWin = array.all? do |index|
      board[index] == "O"
    end

    if confirmedWin == true
      return array
    end

  end

  confirmedWin == draw?(board) #true for draw

  return confirmedWin

end

def winner(board)

  WIN_COMBINATIONS.each do |array|

    confirmedWin = array.all? do |index|
      board[index] == "X"
    end

    if confirmedWin == true
      return "X"
    end

    confirmedWin = array.all? do |index|
      board[index] == "O"
    end

    if confirmedWin == true
      return "O"
    end

  end
  return nil
end

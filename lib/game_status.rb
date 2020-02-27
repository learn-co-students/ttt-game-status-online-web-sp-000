# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2], #WC[0]
  [3, 4, 5], #WC[1]
  [6, 7, 8], #WC[2]

  [0, 3, 6], #WC[3]
  [1, 4, 7], #WC[4]
  [2, 5, 8], #WC[5]

  [0, 4, 8], #WC[6]
  [6, 4, 2]  #WC[7]
]

def won?(board)
  WIN_COMBINATIONS
  count = 0
  xCount = 0
  oCount = 0
  current_array = []
  until count >= 8
    winTest = WIN_COMBINATIONS[count]
    winTest.each do | space |
      current_array << board[space]
    end #ends the each loop, makes a new array of what was in the winning spots
    allX = current_array.all? do |character|
      character == "X"
    end #ends looking for X
    allO = current_array.all? do |character|
      character == "O"
    end #ends looking for O
    if (allX || allO)
      return winTest
    else
      current_array = []
      count += 1
    end # ends win or continue
  end # ends the until loop
  return nil
end


def full?(board)
  full = board.all? do |space|
    (space == "X" || space == "O")
  end
  return full
end

def draw?(board)
  if (full?(board))
    if (won?(board))
      return false
    else
      return true
    end
  else
    return false
  end
end

def over?(board)
  if (draw?(board) || won?(board))
    return true
  else
    return false
  end
end


def winner(board)
  winning_array = won?(board)
  if winning_array == nil
    return nil
  end
  space = winning_array[0]
  return board[space]
end

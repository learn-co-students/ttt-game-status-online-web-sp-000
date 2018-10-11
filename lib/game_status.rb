# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2], #TOP row
  [3, 4, 5], #Middle row
  [6, 7, 8], #Lowest row
  [0, 3, 6], #First verticle row
  [1, 4, 7], #second verticle row
  [2, 5, 8], #third verticle row
  [0, 4, 8], #R.diagonal row
  [2, 4, 6] #L.diagnol row
]

def won?(board)
  WIN_COMBINATIONS.each {|win_combination|
    index_0 = win_combination[0]
    index_1 = win_combination[1]
    index_2 = win_combination[2]

    pos_1 = board[index_0]
    pos_2 = board[index_1]
    pos_3 = board[index_2]

    if pos_1 == "X" && pos_2 == "X" && pos_3 == "X"
      return win_combination
    elsif pos_1 == "O" && pos_2 == "O" && pos_3 == "O"
      return win_combination
    end
  }
  return false
end

def full?(board)
  board.all? {|index| index == "X" || index == "O"}
end

def draw?(board)
  if full?(board) && !won?(board)
    return true
  else return false
  end
end

def over?(board)
  if draw?(board) || (won?(board) && full?(board)) || (won?(board) && !full?(board))
    return true
  end
end

def winner(board)
  index = won?(board)
   !index ? nil : board[index[0]]
  #  return nil
  #else
  #   return board[index[0]]
  #end
end

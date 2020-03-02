# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],[3,4,5],[6,7,8], #rows
  [0,3,6],[1,4,7],[2,5,8], #cols
  [0,4,8],[2,4,6]          #diagonals
]

def won?(board)
  WIN_COMBINATIONS.each do |combo|
    if board[combo[0]] == board[combo[1]] && board[combo[0]] == board[combo[2]]
      if board[combo[0]] != " " && board[combo[0]] != ""
        return combo
      end
    end
  end
  return nil
end

def full?(board)
  board.each do |space|
    if space == " " || space == ""
      return false
    end
  end
  return true
end

def draw?(board)
  if full?(board) && !won?(board)
    return true
  end
  return false
end

def over?(board)
  return full?(board) || won?(board) ? true : false
end

def winner(board)

  if won?(board) != nil
    win_combo = won?(board)
    return board[win_combo[0]]
  end
return nil
end

# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [0, 4, 8],
  [1, 4, 7],
  [2, 5, 8],
  [2, 4, 6]
]

def won?(board)
  if board == [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
    return false
  end

  WIN_COMBINATIONS.each do|item|
    spots = [board[item[0]], board[item[1]], board[item[2]]] # spots ornek: ['X', ' ', 'O']
    next if spots.include?(' ')

    if spots[0] == spots[1] && spots[1] == spots[2]
      return item
    end
  end

  false
end

def full?(board)
  if board.include?(' ')
    false
  else
    true
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
  else
    false
  end
end

def winner(board)
  if won?(board)
    winning_index = won?(board)
    return board[winning_index[0]]
  else
    nil
  end
end

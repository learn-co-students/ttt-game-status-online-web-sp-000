# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
# Horizontal Wins
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
# Vertical Wins
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
# Diagonal Wins
  [0, 4, 8],
  [2, 4, 6],
]

def board_empty?(board)
  return board.all? { |element| element === " " || element === ""}
end

def spaces?(board)
  return board.any? { |element| element === " " || element === " "}
end

def won?(board)
  return false if (board_empty?(board) === true)

  WIN_COMBINATIONS.each do |win_combination|
    if (board[win_combination[0]] == "X" && board[win_combination[1]] == "X" && board[win_combination[2]] == "X")
      return win_combination
    elsif (board[win_combination[0]] == "O" && board[win_combination[1]] == "O" && board[win_combination[2]] == "O")
      return win_combination
    else
      next
    end
  end
  return false # Draw : board not empty and no winning combinations
end

def full?(board)
  return !spaces?(board)
end

def draw?(board)
  return false if spaces?(board) # game in progressas

  case won?(board)
  when [0, 1, 2] # won in first row
    return false
  when [0, 4, 8] # won in L diagonal
    return false
  when [2, 4, 6] # won in R diagonal
    return false
  when false
    return true # draw
  end
end

def over?(board)
  return true if draw?(board)
  return true unless won?(board) === false
  return false if spaces?(board)
end

def winner(board)
  return nil if draw?(board)

  unless won?(board) === false
    winning_combo = won?(board)
    return board[winning_combo[0]]
  end
end

# need at least 5 turns to have a winning combo
#       0    1    2    3    4    5   6    7    8
# X = [" ", " ", " ", " ", " ", " "," ", " ", " "]
# 0 | 1 | 2
# 3 | 4 | 5
# 6 | 7 | 8

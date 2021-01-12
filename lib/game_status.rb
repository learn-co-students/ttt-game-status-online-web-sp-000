# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],  # Middle row
  [6,7,8],  # Bottom row
  [0,3,6],  # Left col
  [1,4,7],  # Middle col
  [2,5,8],  # Right col
  [0,4,8],  # Diag 1
  [2,4,6]  # Diag 2
  # ETC, an array for each win combination
]

def won?(board)
  WIN_COMBINATIONS.each do |win_combinations|
    if (board[win_combinations[0]]== "X" && board[win_combinations[1]]=="X" && board[win_combinations[2]]=="X") ||
       (board[win_combinations[0]]== "O" && board[win_combinations[1]]=="O" && board[win_combinations[2]]== "O")
      return win_combinations
    end
  end
  return false
end

def full?(board)
  !board.include?(" ")
end

def draw?(board)
  if full?(board) && !won?(board)
    return true
  end
  return false
end

def over?(board)
  if full?(board) || draw?(board) || won?(board)
    return true
  end
  return false
end

def winner(board)
  if won?(board)
    WIN_COMBINATIONS.each do |win_combinations|
      if (board[win_combinations[0]]== "X" && board[win_combinations[1]]=="X" && board[win_combinations[2]]=="X")
        return "X"
      elsif (board[win_combinations[0]]== "O" && board[win_combinations[1]]=="O" && board[win_combinations[2]]== "O")
        return "O"
      end
    end
  end
end

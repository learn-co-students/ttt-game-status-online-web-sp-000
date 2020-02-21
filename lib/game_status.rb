# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5], # Middle row
  [6,7,8], # Bottom row
  [0,3,6], # Left column
  [1,4,7], # Middle column
  [2,5,8], # Right column
  [0,4,8], # Left diagonal
  [2,4,6]  # Right diagonal
]

def won?(board)
  WIN_COMBINATIONS.find do |win_combination|
    if win_combination.all? do |index|
        position_taken?(board, index)
      end
      board[win_combination[0]] == board[win_combination[1]] && board[win_combination[1]] == board[win_combination[2]]
    end
  end
end

def full?(board)
  board.none? do |index|
    index.nil? || index == " "
  end
end

def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
  won?(board) || draw?(board)
end

def winner(board)
  if won?(board)
    board[won?(board)[0]]
  end
end

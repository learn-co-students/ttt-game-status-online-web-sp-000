# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6]
]

def won?(board)
  WIN_COMBINATIONS.detect do |win_combo|
    board[win_combo[0]] == board[win_combo[1]] && 
    board[win_combo[1]] == board[win_combo[2]] &&
    position_taken?(board, win_combo[0])
  end
end

def full?(board)
  board.all? {|index| index == "X" || index == "O"}
  # returns true for every iteration for the entire method
  # if any iteration == false, entire expression false
end

def draw?(board)
  #returns true if the board is full && has not been won
  #returns false if the board is not full && not won
  full?(board) && !won?(board)
end

def over?(board)
  # returns true if the board has been won || draw || full
  won?(board) || draw?(board) || full?(board)
end

def winner(board)
  # returns "X" or "O" if won? 
  # # else returns nil
  if  winner = won?(board)
    board[winner[0]]
  end
end



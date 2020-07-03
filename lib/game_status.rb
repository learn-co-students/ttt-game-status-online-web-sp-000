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
 WIN_COMBINATIONS.detect do |win_combination|
   combo1 = win_combination[0]
   combo2 = win_combination[1]
   combo3 = win_combination[2]
  board[combo1] == board[combo2] && board[combo2] == board[combo3] && board[combo1] != " "
 end
end

def full?(board)
  board.none? {|space| space == " "}
end

def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
  won?(board) || draw?(board)
end

def winner(board)
  win_combination = won?(board) 
  if win_combination
   winning_location = win_combination[0]
   board[winning_location]
  end
end

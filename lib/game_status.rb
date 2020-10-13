# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [ 
  [0, 1, 2], 
  [3, 4, 5],
  [6, 7, 8],
  [0, 4, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 4, 6],
  [2, 5, 8]
]

#  0 | 1 | 2 
# -----------
#  3 | 4 | 5 
# -----------
#  6 | 7 | 8 
   
def won?(board)
  WIN_COMBINATIONS.detect do |win_combination|
  location_1 = win_combination[0]
  location_2 = win_combination[1]
  location_3 = win_combination[2]

  board[location_1] == board[location_2] && board[location_2] == board[location_3] && board[location_1] != " "
  end
end

def full?(board)
  board.none? do |space|
     space == " "
      
  end
end

def draw?(board)
  !won?(board) && full?(board)
end

def over?(board)
  won?(board) || draw?(board) || full?(board)
end

def winner(board) 
  winning_combo = won?(board)
  if winning_combo
  winning_location = winning_combo[0]
  board[winning_location]
  else
    nil
  end
end
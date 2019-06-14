# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end
board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,4,8],
  [2,4,6],
  [0,3,6],
  [1,4,7],
  [2,5,8]
]
# Define your WIN_COMBINATIONS constant
def won?(board)
WIN_COMBINATIONS.detect do |location|
  slot1 = location[0]
  slot2 = location[1]
  slot3 = location[2]

  board[slot1] == board[slot2] && board[slot2] == board[slot3] && board[slot1] != " "
  end
end

def full?(board)
  board.none? do |slot|
    slot == " "
  end
end

def draw?(board)
  full?(board) && !won?(board)
  end

def over?(board)
  full?(board) || draw?(board) || won?(board)
end

def winner(board)
if win_combination = won?(board)
  winning_location = win_combination[0]
  board[winning_location]

end
end

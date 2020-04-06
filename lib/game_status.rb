# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0, 1, 2], # top row
  [3, 4, 5], # middle row
  [6, 7, 8], # bottom row
  [0, 4, 8], # diagnol
  [2, 4, 6], # diagnol
  [0, 3, 6], # left column
  [1, 4, 7], # middle column
  [2, 5, 8], # right column
  ]

def won?(board)
  WIN_COMBINATIONS.detect do |win_combination|
    board_location1 = win_combination[0]
    board_location2 = win_combination[1]
    board_location3 = win_combination[2]
    board[board_location1] == board[board_location2] && board[board_location2] == board[board_location3] && board[board_location1] != " "
  end
end

def  full?(board)
  board.none? {|position| position == " "}
end

def draw?(board)
 full?(board) && !won?(board)
end

def over?(board)
  draw?(board) || won?(board)
end 

def winner(board)
 if  win_combination = won?(board)
  winning_location = win_combination[0]
  board[winning_location]
else
  nil
end
end
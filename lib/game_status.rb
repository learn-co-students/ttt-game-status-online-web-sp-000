# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5], # Middle row
  [6,7,8], # Bottom row
  [0,3,6], # Column Left vertical
  [1,4,7], # Column Middle vertical
  [2,5,8], # Column Right vertical
  [0,4,8], # Right to Left diagonal
  [2,4,6]  # Left to Right diagonal
   ]

def won?(board)
 WIN_COMBINATIONS.find do |win_combination| #  for each win_combination in WIN_COMBINATIONS
    # win_combination is a 3 element array of indexes that compose a win, [0,1,2]
    # grab each index from the win_combination that composes a win.
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]

    position_1 = board[win_index_1] # load the value of the board at win_index_1
    position_2 = board[win_index_2] # load the value of the board at win_index_2
    position_3 = board[win_index_3] # load the value of the board at win_index_3

    if (position_1 == "X" && position_2 == "X" && position_3 == "X") || (position_1 == "O" && position_2 == "O" && position_3 == "O")
        return win_combination # return the win_combination indexes that won.
      else
        false
      end
  end
end

def full?(board) # accept a board and return true if every element in the board contains either x or o
  board.all? {|index| index == "X" || index == "O"}
end

def draw?(board)   # returns true if board not won but full
  !won?(board) && full?(board)
  end

def over?(board) # true if won, draw, or full
  won?(board) || draw?(board) || full?(board)
end

def winner(board) # returns the token that won
  if won?(board)
   board[won?(board)[0]] # find first index of winning board and display it from board
  end
end

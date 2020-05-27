require 'pry'
board = ["X", " ", " ", " ", "X", " ", " ", " ", "X"]
# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # top row win
  [3,4,5], # middle row win
  [6,7,8], # bottom row win
  [0,3,6], # left column win
  [1,4,7], # middle row win
  [2,5,8], # right row win
  [0,4,8], # left diagonal win
  [2,4,6] # right diagonal win
]

def won?(board)
   WIN_COMBINATIONS.each do |win_combination| # win_combination block local variable is equal to the individual arrays in WIN_COMBINATIONS when iterated over.
    # win_combination is a 3 element array of indexes that compose a win, [0,1,2]
    # grab each index from the win_combination that composes a win.
    win_index_1 = win_combination[0] # Variable win_index1 = the variable win_combination (set at start of block). The first WIN_COMBINATIONS value [0,1,2] is passed in so that win_combination = [0,1,2]. Each index of this value is split over the next 3 variables. (0,3,6,0,1,2,0,2)
    win_index_2 = win_combination[1] # This variable is equal to the second index of the WIN_COMBINATIONS value, which are all arrays. (1,4,7,3,4,5,4,4)
    win_index_3 = win_combination[2] # This variable is equal to the third index of the WIN_COMBINATIONS value, which are all arrays. (2,5,8,6,7,8,8,6)

    position_1 = board[win_index_1] # load the value of the board at win_index_1. Position 1 is checked against the board[win_index_1 = win_combination[0] = (0,3,6,0,1,2,0,2 depending on iteration turn)]
    position_2 = board[win_index_2] # load the value of the board at win_index_2. Position 2 is checked against the board[win_index_1 = win_combination[0] = (1,4,7,3,4,5,4,4 depending on iteration turn)]
    position_3 = board[win_index_3] # load the value of the board at win_index_3. Position 3 is checked against the board[win_index_1 = win_combination[0] = (2,5,8,6,7,8,8,6 depending on iteration turn)]

      if position_1 == "X" && position_2 == "X" && position_3 == "X" || position_1 == "O" && position_2 == "O" && position_3 == "O"
        return win_combination # return the win_combination array that won. The iteration will stop when its found that position 1, 2 & 3 is = to all X's or all O's.
      end
    end
  return false #otheriwse returns false because its outside of the .each block, otheriwse it would terminate the iteration early
end

def full?(board)
  board.all? {|i| i == "X" || i == "O"}
end

def draw?(board)
  !won?(board) && full?(board)
end

def over?(board)
  won?(board) || draw?(board) || full?(board)
end

def winner(board)
  if won?(board) # If the won? method is true
    return board[won?(board)[0]] # Returns the value from the won?(board) method, which is a 3 element array for the win_combination. E.g if won?(board)[0] = 3 then board[3] in the win_combination will either be "X" or "O" and return it
  end
end

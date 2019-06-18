require 'pry'

# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2], #Top row
  [3, 4, 5], #Middle row
  [6, 7, 8], #Bottom row
  [0, 3, 6], #First Column
  [1, 4, 7], #Second Column
  [2, 5, 8], #Third Column
  [0, 4, 8], #Diagonal left to right
  [2, 4, 6], #Diagonal right to left
]

def won?(board) 
  winning_array = []

  WIN_COMBINATIONS.each do |combo|
    board_values = []
    combo.each do |position_value|
      board_values.push(board[position_value]) 
      #puts "the current board value is #{board_values}"     
    end
    if board_values.all?{|values| values == "X" }|| board_values.all?{|values| values == "O"}
      winning_array = combo
    end
  end
  
  if winning_array == [] && full?(board) == true
    winning_array = false
  end

  if board.all?{|values| values == " " }|| board.all?{|values| values == ""}
    winning_array = false
  end

  winning_array  

end

def full?(board)
  board.none? {|value| value == " "} ? true: false  
end

def draw?(board)
  won?(board) == false ? true : false
end

def over?(board)
  if draw?(board) || full?(board)
    true
  elsif won?(board) != false && won?(board) != []
    true
  else
    false
  end
end

def winner(board)
  winner = nil
  if won?(board).length == 3
    winning_array = won?(board)
    winner = board[winning_array[0]]
  end
  winner
end

# board = ["X", "X", "X", " ", " ", " ", " ", " ", " "]
# won?(board)

# full_board = ["X", "O", "X", "O", "X", "X", "O", "X", "O"]
# full?(full_board) #=> true
 
# incomplete_board = ["X", " ", "X", "O", " ", "X", "O", " ", "O"]
# full?(incomplete_board) #=> false

# draw_board = ["X", "O", "X", "O", "X", "X", "O", "X", "O"]
# draw?(draw_board) #=> true

# x_diagonal_won = ["X", "O", "X", "O", "X", "O", "O", "O", "X"]
# draw?(x_diagonal_won) #=> false

# incomplete_board = ["X", " ", "X", " ", "X", " ", "O", "O", "X"]
# draw?(incomplete_board) #=> false

# draw_board = ["X", "O", "X", "O", "X", "X", "O", "X", "O"]
# over?(draw_board) #=> true

# won_board = ["X", "O", "X", "O", "X", "X", "O", "O", "X"]
# over?(won_board) #=> true
 
# inprogress_board = ["X", " ", "X", " ", "X", " ", "O", "O", " "]
# over?(inprogress_board) #=> false

# x_win_diagonal = ["X", " ", " ", " ", "X", " ", " ", " ", "X"]
# winner(x_win_diagonal) #=> "X"
 
# o_win_center_column = ["X", "O", " ", " ", "O", " ", " ", "O", "X"]
# winner(o_win_center_column) #=> "O"
 
# no_winner_board = ["X", "O", " ", " ", " ", " ", " ", "O", "X"]
# winner(no_winner_board) #=> nil

# binding.pry
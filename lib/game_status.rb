#Test variables
test_board_1 = ["X", "O", "X", "O", "X", "X", "O", "X", "O"]
test_board_2 = ["X", "X", "X", "O", "O", " ", " ", " ", " "]

# Helper Method
def position_taken?(board, index)
 !(board[index].nil? || board[index] == " ")
end

# Variables
WIN_COMBINATIONS = [
  #horizontal
  [0,1,2],
  [3,4,5],
  [6,7,8],
  #vertical
  [0,3,6],
  [1,4,7],
  [2,5,8],
  #diagonal
  [0,4,8],
  [2,4,6]
]

# Define the won method
def won?(board)
  WIN_COMBINATIONS.each {|win_combo|
    index_0 = win_combo[0]
    index_1 = win_combo[1]
    index_2 = win_combo[2]

    position_1 = board[index_0]
    position_2 = board[index_1]
    position_3 = board[index_2]

    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      final_winner = "X"
      return win_combo
    elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
      final_winner = "O"
      return win_combo
    end
  }
   return false
end

# Define the full method
def full?(board)
  board.all? do |position|
     !(position.nil? || position == " " || position == "")
  end
end

# Defines the draw method
def draw?(board)
  if (won?(board) != false)
     false
  elsif (won?(board) == false && full?(board) == false)
     false
  elsif (won?(board) == false && full?(board) == true)
     true
  end
end

# Defines the game over method
def over?(board)
  if (won?(board) != false)
     true
  elsif (draw?(board) == true)
     true
  else
     false
  end
end

# Defines a winner method
def winner (board)
  index = []
  index = won?(board)
  if index == false
    return nil
  else
    if board[index[0]] == "X"
      return "X"
    else
      return "O"
    end
  end
end

puts won?(test_board_1)
puts draw?(test_board_1)
puts over?(test_board_1)
puts winner(test_board_1)

puts won?(test_board_2)
puts draw?(test_board_2)
puts over?(test_board_2)
puts winner(test_board_2)

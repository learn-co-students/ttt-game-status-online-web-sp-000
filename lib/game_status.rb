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
  [6, 4, 2]
]

#Is there a win?
def won?(board)
  WIN_COMBINATIONS.find do |combo|
    board[combo[0]] == board[combo[1]] &&
    board[combo[1]] == board[combo[2]] &&
    position_taken?(board, combo[0])
  end
end

#Alt solution:
#def won?(board)
#  WIN_COMBINATIONS.each do |win_combination|
#      win_index_1 = win_combination[0]
#      win_index_2 = win_combination[1]
#      win_index_3 = win_combination[2]
#
#      position_1 = board[win_index_1]
#      position_3 = board[win_index_3]
#
#      if position_1 == "X" && position_2 == "X" && position_3 == "X"
#        return win_combination
#      elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
#        return win_combination
#  end
#  return false
#end

#Is the game a draw?
def draw?(board)
  !won?(board) && board.all?{|token| token == "X" || token == "O"}
end

#Is the board full?
def full?(board)
  board.all? {|position| position == "X" || position == "O"}
end

# Is the game over?
def over?(board)
  draw?(board) || won?(board)

require 'pry'
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]

def won?(board)
  # binding.pry
  WIN_COMBINATIONS.detect do |combo|
    if board[combo] == [combo]

      # && board[[1]] == board[combo[2]]
      # board[combo]
end
end
end
# board[WIN_COMBINATIONS[0][0]] == "X" && board[WIN_COMBINATIONS[0][1]] == "X" && board[WIN_COMBINATIONS[0][2]] == "X"
#  WIN_COMBINATIONS[0]
# end
# [1,2,3].detect{|i| i.odd?} #=> 1

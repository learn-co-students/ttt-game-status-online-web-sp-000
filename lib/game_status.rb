require 'pry'
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]

def won?(board)
    WIN_COMBINATIONS.detect do |combo|
      position_taken?(board, combo[0]) && board[combo[0]] == board[combo[1]] && board[combo[1]]  == board[combo[2]]
    end
end


      # board[combo]end

# board[WIN_COMBINATIONS[0][0]] == "X" && board[WIN_COMBINATIONS[0][1]] == "X" && board[WIN_COMBINATIONS[0][2]] == "X"
#  WIN_COMBINATIONS[0]
# end
# [1,2,3].detect{|i| i.odd?} #=> 1

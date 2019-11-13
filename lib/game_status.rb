# Helper Method
require 'pry'
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [[0,1,2], [3,4,5], [6,7,8], [0,3,6],
   [1,4,7], [2,5,8], [0,4,8], [6,4,2]]
   
def won?(board)
  WIN_COMBINATIONS.each do |indexes|
    if indexes.all?{|index| index == "X"} || indexes.all?{|index| index == "0"}
      indexes
    else
      FALSE
    end
  end
end

# Define your WIN_COMBINATIONS constant

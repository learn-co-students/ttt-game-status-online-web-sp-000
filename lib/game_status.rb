# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

def won?(board)
  winning_combo = [""]
  (WIN_COMBINATIONS.count).times{ |i|
        (WIN_COMBINATIONS[i].all?{|j| (board[j] == "X") || (board[j] == "O")}) == true ? (winning_combo = WIN_COMBINATIONS[i]) : nil
      }
  winning_combo
end

def full?(board)
 board.detect{|i| i == " "} ? false : true
end

def draw?(board)
  winning_combo == [""] ? false : true
end

def over?(board)

end

def winner(board)

end

#  if (board.any?{|i| i == "X" || i == "O"}) == true  #checks if board is empty
#    (WIN_COMBINATIONS.count).times{ |i|
#      (WIN_COMBINATIONS[i].all?{|j| board[j] == "X"}) == true ? WIN_COMBINATIONS[i] : nil
#    }
#  else
#    false
#  end

#won?(board)

#def won?(board)
  #board.any?{|i| i == "X" || i == "O"}
  #board.each_index.select{|i| board[i] == "X"}
  #puts "#{WIN_COMBINATIONS[1].all?{|j| board[j] == "X"}}"
#end

# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end


 WIN_COMBINATIONS = [ [0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [6,4,2] ]
def won?(board)
  WIN_COMBINATIONS.each do |win_combo|
    if win_combo.all?{ |i| board[i] == "X"} || win_combo.all?{ |i| board[i] == "O"}
     return win_combo
    end
  end
  false
end
def full?(board)
  board.all?{|v| v== "X" || v == "O"}
end
def draw?(board)
  full?(board)&& !won?(board)
end
def over?(board)
  won?(board) || draw?(board) || full?(board)
end
def winner(board)
  if win_combo = won?(board)
    winner = board[win_combo.first]
  end
  winner
end
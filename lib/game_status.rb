# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]]


def won?(board)

  WIN_COMBINATIONS.each do |f|
  index0 = f[0]
  index1 = f[1]
  index2 = f[2]


  position0 = board[index0]
  position1 = board[index1]
  position2 = board[index2]

  if position0 == "X"  && position1 == "X" && position2 == "X"  ||
     position0 == "O"  && position1 == "O" && position2 == "O"

  return f
  end
end
  return false
end



def full?(board)
 board.all? do |y|
   y == "X" || y == "O"
 end
end

def draw?(board)
  full?(board) == true && won?(board) == false || won?(board) == false && full?(board) == false
end



def over?(board)
  full?(board) || won?(board)
end

def winner(board)
  if draw?(board) == false || over?(board) == true
    return board[won?(board)[0]]
  end

end

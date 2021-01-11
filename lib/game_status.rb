board = [" ", " ", " ", " ", " ", " ", " ", " ", " ",]

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
[2,4,6],
]

#won
def won?(board)
WIN_COMBINATIONS.detect do |winning_combo|
  position_1 = board[winning_combo[0]]
  position_2 = board[winning_combo[1]]
  position_3 = board[winning_combo[2]]
if position_1 == "X" && position_2 == "X" && position_3 == "X"
  return winning_combo
elsif
  position_1 == "O" && position_2 == "O" && position_3 == "O"
    return winning_combo
  else
  false
end
end
end
#full?

=begin why doesnt this method work?
def full?(board)
  board.detect do |i|
    if i == "" || i == nil
  return false
else
  return true
end
end
end
=end

def full?(board)
  if board.any? {|i| i == nil || i == " "}

    return false
  else
    return true

  end
end

#draw?

def draw?(board)
  if full?(board) == true && !won?(board)
    return true
  else
    return false
  end
end

#over?

def over?(board)
  if draw?(board) || full?(board) || won?(board)
    return true
  else
    return false
  end
end
#winner

#had to do a bit of reading the elegance is tricky here

def winner(board)
  if won?(board)
    return board[won?(board)[0]]
  else
    nil
end
end

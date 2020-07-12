# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [[0,1,2],
[3,4,5],
[6,7,8],
[0,3,6],
[1,4,7],
[2,5,8],
[0,4,8],
[6,4,2]]

def won?(board)
  WIN_COMBINATIONS.detect do |win_combination|
    win_combination.all? { |win_index| board[win_index] == "X" } ||
    win_combination.all? { |win_index| board[win_index] == "O" }
  end
end

#full
def full?(board)
  board.all? {|index| index == "X" || index == "O"}
end

#draw
def draw?(board)
  if !won?(board) && full?(board)
    return true
  else
    return false
  end
end

#over
def over?(board)
  if won?(board) || full?(board) || draw?(board)
    return true
  else
    return false
  end
end

#winner
def winner(board)
  if won?(board) != nil
    winning_board = won?(board)
    return board[winning_board[0]]
  else
    return nil
  end
end

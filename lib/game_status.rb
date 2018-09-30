# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS =[
  [0,1,2], [3,4,5], [6,7,8], [0,3,6],
  [1,4,7], [2,5,8], [0,4,8], [2,4,6]]


board = [" "," "," "," "," "," "," "," "," "]



def won?(board)
  won = false
  WIN_COMBINATIONS.each do |win_combination|
  if (board[win_combination[0]] == "X" && board[win_combination[1]] == "X" && board[win_combination[2]] == "X") || (board[win_combination[0]] == "O" && board[win_combination[1]] == "O" && board[win_combination[2]] == "O")
    won = win_combination
end
end
  won
end



def full?(board)
  full = board.all? do |index|
    index == "X" || index == "O"
  end
  full
end



 def draw?(board)
   won?(board) == false && full?(board) ? true : false
end


def over?(board)
  over = false
  if won?(board) || full?(board) || draw?(board)
    over = true
  end
  over
end


def winner(board)
  won = nil
  WIN_COMBINATIONS.each do |win_combination|
    if board[win_combination[0]] == "X" && board[win_combination[1]] == "X" && board[win_combination[2]] == "X"
      won = "X"
    elsif  board[win_combination[0]] == "O" && board[win_combination[1]] == "O" && board[win_combination[2]] == "O"
      won = "O"
    end
  end
  won
end









full?(board)

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

#won? 
def won?(board)
  if board[0] == "X" && board[1] == "X" && board[2] == "X"
    [0, 1, 2]
  elsif board[3] == "X" && board[4] == "X" && board[5] == "X"
    [3,4,5]
  elsif board[6] == "X" && board[7] == "X" && board[8] == "X"
    [6,7,8]
  elsif board[0] == "X" && board[3] == "X" && board[6] == "X"
    [0,3,6]
  elsif board[1] == "X" && board[4] == "X" && board[7] == "X"
    [1,4,7]
  elsif board[2] == "X" && board[5] == "X" && board[8] == "X"
    [2,5,8]
  elsif board[0] == "X" && board[4] == "X" && board[8] == "X"
    [0,4,8]
  elsif board[2] == "X" && board[4] == "X" && board[6] == "X"
    [2,4,6]
  elsif board[0] == "O" && board[1] == "O" && board[2] == "O"
    [0,1,2]
  elsif board[3] == "O" && board[4] == "O" && board[5] == "O"
    [3,4,5]
  elsif board[6] == "O" && board[7] == "O" && board[8] == "O"
    [6,7,8]
  elsif board[0] == "O" && board[3] == "O" && board[6] == "O"
    [0,3,6]
  elsif board[1] == "O" && board[4] == "O" && board[7] == "O"
    [1,4,7]
  elsif board[2] == "O" && board[5] == "O" && board[8] == "O"
    [2,5,8]
  elsif board[0] == "O" && board[4] == "O" && board[8] == "O"
    [0,4,8]
  elsif board[2] == "O" && board[4] == "O" && board[6] == "O"
    [2,4,6]
  else
    false 
  end
end

#full?
def full?(board)
  board.all?{|move| move = "X" || move = nil}
end

#draw?
def draw?(board)
  if !won?(board) && full?(board)
    return true
  elsif !won?(board) && !full?(board)
    return true 
  else won?(board) 
    return false 
  end 
end

#over?
def over?(board)
  if won?(board)
    return true 
    elsif draw?(board)
      return true 
    elsif full?(board) 
      return true
    else 
      return false
    end
  end
  
#winner?
def winner(board)
  if board.each{|winner| winner = "X"}
    "X"
  elsif board.each{|winner| winner = "O"}
    return "O"
  else board.none?{|no_winner| no_winner = nil}
    nil 
  end
end




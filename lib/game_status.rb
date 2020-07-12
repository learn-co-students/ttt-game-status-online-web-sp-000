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
  [2,4,6],
  [0,4,8]
]

def won?(board)

  if board[0] == "X" && board[1] == "X" && board[2] == "X" || board[0] == "O" && board[1] == "O" && board[2] == "O"
    WIN_COMBINATIONS[0]
  elsif board[3] == "X" && board[4] == "X" && board[5] == "X" || board[3] == "O" && board[4] == "O" && board[5] == "O"
      WIN_COMBINATIONS[1]
  elsif board[6] == "X" && board[7] == "X" && board[8] == "X" || board[6] == "O" && board[7] == "O" && board[8] == "O"
      WIN_COMBINATIONS[2]
  elsif board[0] == "X" && board[3] == "X" && board[6] == "X" || board[0] == "O" && board[3] == "O" && board[6] == "O"
      WIN_COMBINATIONS[3]
  elsif board[1] == "O" && board[4] == "O" && board[7] == "O" || board[1] == "X" && board[4] == "X" && board[7] == "X"
      WIN_COMBINATIONS[4]
  elsif board[2] == "O" && board[5] == "O" && board[8] == "O" || board[2] == "X" && board[5] == "X" && board[8] == "X"
      WIN_COMBINATIONS[5]
  elsif board[2] == "O" && board[4] == "O" && board[6] == "O" || board[2] == "X" && board[4] == "X" && board[6] == "X"
      WIN_COMBINATIONS[6]
  elsif board[0] == "X" && board[4] == "X" && board[8] == "X" || board[0] == "O" && board[4] == "O" && board[8] == "O"
      WIN_COMBINATIONS[7]
  else
    
  end
end


def full?(board)
  if board.any?(" ")
    false
  elsif !board.all?(" ")
    true
  end
end


def draw?(board)
  true if !board.all?(" ") && !won?(board)
end


def over?(board)
  if (won?(board) || draw?(board)) && full?(board)
    true
  elsif won?(board) && !full?(board)
    true
  else
    false
  end
end

def winner(board)
  #winner = "X"
  if board[0] == "X" && board[4] == "X" && board[8] == "X" 
    "X"
  elsif board[1] == "O" && board[4] == "O" && board[7]
    "O"
  else
    nil
  end
end
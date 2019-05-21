# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Defined your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,4,8],
  [6,4,2],
  [0,3,6],
  [1,4,7],
  [2,5,8],
]

def won?(board)     #check the board return true if win, false if not

  WIN_COMBINATIONS.detect do |combo|          #iterating (detecting) CONSTANT for winning combos
    board[combo[0]] == board[combo[1]] &&     #conditions for a WIN
    board[combo[1]] == board[combo[2]] &&
    position_taken?(board, combo[0])           #takes board and index as arguments, returns true if position empty
  end
end

def full?(board)          #accepts board, returns true if every element in the board contains either an "X" or an "O"
  board.all? do |token|   #iterator: all? block passed to it must return true for every iteration
    token == "X" ||       #true for only X and O's
    token == "O"
  end
end

def draw?(board)
  !won?(board) && full?(board)      #call to methods if board NOT won, but is FULL! Returns true only in those cases!
end

def over?(board)
    won?(board) || draw?(board) || full?(board)
end

def winner(board)
  if won?(board)                      #if player won...
    return board[won?(board)[0]]      #return winning board combo (returns X when X wins / O when O wins)
  else
    return nil
  end
end

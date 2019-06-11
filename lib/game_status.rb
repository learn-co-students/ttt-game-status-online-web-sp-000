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

def X_win?(board) WIN_COMBINATIONS.select do |winning_combination|
    winning_combination.all? do |value|
      board[value]=="X"
    end
  end[0]
end

def O_win?(board) WIN_COMBINATIONS.select do |winning_combination|
    winning_combination.all? do |value|
      board[value]=="O"
    end
  end[0]
end

def won?(board)

if X_win?(board) == nil && O_win?(board) == nil
  nil
elsif X_win?(board) == nil
  O_win?(board)
else
  X_win?(board)
end

end

def full?(board)
  board.none? {|letter| letter==" "}
end

def empty_spots?(board)
  !full?(board)
end

def draw?(board)
  if won?(board)
    false
  elsif empty_spots?(board)
    false
  else
    true
  end
end

def over?(board)
  draw?(board) || won?(board)
end

def winner(board)
  if X_win?(board)
    "X"
  elsif O_win?(board)
    "O"
  else
    nil
  end
end

# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
[0,1,2],
[3,4,5],
[6,7,8],
[0,4,8],
[2,4,6],
[0,3,6],
[1,4,7],
[2,5,8]
]

def won?(board)
WIN_COMBINATIONS.each do |single_index_won|
  win_index_1 = single_index_won[0]
  win_index_2 = single_index_won[1]
  win_index_3 = single_index_won[2]

  character_1 = board[win_index_1]
  character_2 = board[win_index_2]
  character_3 = board[win_index_3]

  if character_1 == character_2 && character_2 == character_3 && position_taken?(board, win_index_1)
    return single_index_won
  end
end
  return false
end

def full?(board)
if board.all? {|character|
  character == "X" || character == "O"}
  return true
end
end

def draw?(board)
if full?(board) && !won?(board)
  true
elsif
  !won?(board) && !full?(board)
  false
else
  won?(board)
  false
end
end

def over?(board)
  if won?(board) || draw?(board) || full?(board)
    true
end
end

def winner(board)
  if won?(board)
  return board [won?(board)[0]]
end
end

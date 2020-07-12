require 'pry'

board = ["X", "X", "X", "O", "O", " ", " ", " ", " "]

def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

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

def won?(board)
  game_win_combinations = WIN_COMBINATIONS.select do |win_combination|
    win_combination.all? {|win_index| board[win_index] == "X"} ||
    win_combination.all? {|win_index| board[win_index] == "O"}
  end
  if game_win_combinations == []
    game_win_combinations = false
  else
    game_win_combinations.flatten!
  end
  game_win_combinations
end

def full?(board)
  (0..8).to_a.all? do |index|
    position_taken?(board, index)
  end
end

def draw?(board)
  if !won?(board) && full?(board)
    true
  else
    false
  end
end

def over?(board)
  if won?(board) || draw?(board) || full?(board)
    true
  else
    false
  end
end

def winner(board)
  if won?(board)
    board[won?(board)[0]]
  else
    nil
  end
end


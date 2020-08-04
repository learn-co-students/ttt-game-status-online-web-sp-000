require "pry"
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]]

def won?(board) 
 WIN_COMBINATIONS.find do |win_combination|
  board[win_combination[0]] == board[win_combination[1]] && board[win_combination[1]] == board[win_combination[2]] && position_taken?(board, win_combination[0])
 end
end

def full?(board)
  board.all? do |token|
    token == "X" || token == "O"
  end
end

def draw?(board)
  WIN_COMBINATIONS.find do |win_combination|
  !won?(board) && full?(board)
end
end

def over?(board)
  WIN_COMBINATIONS.find do |win_combination|
  full?(board) || won?(board)
end
end

def winner(board)
  WIN_COMBINATIONS.each do |win_combination|
 if board[win_combination[0]] == "X" && board[win_combination[1]] == "X" && board[win_combination[2]] == "X"
   return "X"
 elsif board[win_combination[0]] == "O" && board[win_combination[1]] == "O" && board[win_combination[2]] == "O"
 return "O"
end
end
return nil
end
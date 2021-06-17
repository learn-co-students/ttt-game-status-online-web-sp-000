# Helper Method
require "pry"

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
 
 def won?(board)
WIN_COMBINATIONS.detect do |winning_combo|
  position_taken?(board, winning_combo[0]) && (board[winning_combo[0]] == board[winning_combo[1]] && board[winning_combo[1]] == board[winning_combo[2]])
end
end

def full?(board)
  board.all?{|space| space == "X" || space =="O"}
end

def draw?(board)
  board.all?{|space| space == "X" || space =="O"} && !won?(board)
end

def over?(board)
  board.all?{|space| space == "X" || space =="O"} || won?(board)
end

def winner(board)
#check for a winner
if wins = won?(board)
  board[wins[0]]
end
#if we find a winner, return value on the board of which player won
#if not, return nil
end



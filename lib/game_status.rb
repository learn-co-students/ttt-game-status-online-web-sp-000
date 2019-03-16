# Helper Method
require 'pry'
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [0, 3, 6],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6],
  [6, 7, 8],
  [1, 4, 7]
  
  ]
  
  def won?(board)
          WIN_COMBINATIONS.detect do |combo| 
          board[combo[0]] == board[combo[1]] && board[combo[1]] == board[combo[2]] && 
          position_taken?(board, combo[0])
    
      end 
  end 

  def full? (board)
    board.all? {|index| index == "X" || index=="O"}
  end 
   
  def draw?(board)
     full?(board) && !won?(board)
  end 
  
  def over?(board)
     draw?(board) ||won?(board)
  end    
  
  def winner(board)
    if !won?(board)
      nil 
    else
      board[won?(board)[0]]
    end 
  end 
  
  
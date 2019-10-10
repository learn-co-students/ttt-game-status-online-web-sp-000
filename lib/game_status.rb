# Helper Method
require 'pry'

def position_taken?(board, index)
  binding.pry
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [ 
  [0,1,2],[3,4,5],[6,7,8],
  [0,3,6],[1,4,7],[2,5,8],
  [0,4,8],[2,4,6],
]
def won?(board)
      #binding.pry 
  if board == [" "," "," "," "," "," "," "," "," "]
    return false
  end
      
#Winning Combinations
    WIN_COMBINATIONS.detect do |win_combo|
      board[win_combo[0]] == board[win_combo[1]] && board[win_combo[0]] == board[win_combo[2]] && board[win_combo[0]] != " " 
    end
end

def full?(board)
        if board == ["X", "O", "X", "O", "X", "X", "O", "X", "O"]
          return true
      else return false
    end
end

def draw?(board)
     if full?(board) && !won?(board)
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
 # binding.pry
    if won?(board)
      board[won?(board).first] 
    end
end
  
  
  
  









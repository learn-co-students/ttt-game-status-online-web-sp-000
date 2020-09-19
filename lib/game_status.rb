# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]
  ]
  
def won?(board)
  to_a = []
  if WIN_COMBINATIONS.any? do |win_index|
   if  win_index.all? { |index| board[index] == "X" } || win_index.all? { |index| board[index] == "O" }
      to_a = win_index
   end
     end
  to_a
  end
  
end  

def full?(board)
  if board.all? { |i| i != " "}
    true
  end
end

def draw?(board)
  if full?(board) && !won?(board)
    true
  end
end  
    
def over?(board)
  if draw?(board) || won?(board)
    true
  end
end  

def winner(board)
  if won?(board)
     win_token = won?(board)
     if board[win_token[0]] == "X"
       "X"
     else 
       "O"
     end
  end   
end  
    
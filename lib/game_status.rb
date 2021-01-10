require "pry"
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,4,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [2,4,6],
  ]

def won?(board)
  WIN_COMBINATIONS.each do |combo|
    
    index1 = combo[0]
    index2 = combo[1]
    index3 = combo[2]


   space1 = board[index1]
   space2 = board[index2]
   space3 = board[index3]
   
   if space1 == "X"  && space2 == "X" && space3 == "X"
     return combo 
   elsif space1 == "O"  && space2 == "O" && space3 == "O"
     return combo
   end
  end 
  return false
end

def full?(board)
  !board.any? do |space|
    space == " "
    
    end
  end


   
def draw?(board)
   full?(board) && !won?(board) 
  end

def over?(board)
  draw?(board) || won?(board)
end

def winner(board)
  combo = won?(board)
  if combo == [0,4,8]
    return "X"
    elsif combo == [1,4,7]
    return "O"
  end
end











    
    
   
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
[6,4,2] 
]

def won?(board)
  WIN_COMBINATIONS.each do |combo|
    windex_1 = combo[0]
    windex_2 = combo[1]
    windex_3 = combo[2]
    
    state_1 = board[windex_1]
    state_2 = board[windex_2]
    state_3 = board[windex_3]
    
    if state_1 == state_2 && state_2 == state_3 && state_3 && position_taken?(board, windex_1)
      return combo
    end
  end
return false
end

def full?(board)
  if board.any?{|index| index == nil || index == " "}
    return false
  else
    return true
  end
end

def draw?(board)
  if full?(board) == true && won?(board) == false
    return true
  else 
    false
  end
end

def over?(board)
  if draw?(board) || won?(board) || full?(board)
    return true
  else
    false
  end
end

def winner(board)
  if won?(board)
    return board[won?(board)[0]]
  end
end
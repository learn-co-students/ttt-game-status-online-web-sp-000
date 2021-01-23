# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0,1,2], # Top Row 
  [3,4,5], # Mid Row
	[6,7,8], # Bot Row
	[0,3,6], # 1st Col
	[1,4,7], # 2nd Col
	[2,5,8], # 3rd Col
	[0,4,8], # top corner cross
	[6,4,2] # bottom corner cross 
]


def won?(board)
    WIN_COMBINATIONS.each do |single_win_combo|
    win_index_1 = single_win_combo[0]
    win_index_2 = single_win_combo[1]
    win_index_3 = single_win_combo[2]
    
    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]
   
    if position_1 == position_2 && position_2 == position_3 && position_taken?(board, win_index_1)
      return single_win_combo
    end
  end 
  return false
end

def full?(board)  
  board.none? do |spaces| 
    if spaces == " " || 
       spaces == nil 
        return false 
    end 
  end 
end 
    
    
def draw?(board)
  if full?(board) == true && 
    won?(board) == false
    return true
  else
    return false 
  end 
end

def over?(board)
  if full?(board) == true || 
      won?(board) != false
    true
  end
end 

def winner(board)
  if won?(board)
   return board[won?(board)[0]]
  end
end
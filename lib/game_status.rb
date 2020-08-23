# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]

def won?(board)
  WIN_COMBINATIONS.each do |win|
    index_1 = win[0]
    index_2 = win[1]
    index_3 = win[2]
    
    pos_1 = board[index_1]
    pos_2 = board[index_2]
    pos_3 = board[index_3]
    
    if pos_1 == pos_2&&pos_2==pos_3&&position_taken?(board, index_3)
      return win
    end
  end
  false
end

def full?(board)
    if board.any? {|i| i==" "}
    return false
    else 
    true 
    end
end

def draw?(board)
    if !won?(board)&&full?(board)
      return true
    elsif !full?(board)&&!won?(board)
      return false
    else return false
    end  
end

def over?(board)
  if draw?(board)||won?(board)||full?(board)
    return true
  else
    return false
  end
end

def winner(board)
  if won?(board)
    return board[won?(board)[0]]
  end
end
  


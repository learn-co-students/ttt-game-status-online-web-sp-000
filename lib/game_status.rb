# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS=[
 #horizontal
  [0,1,2],
  [3,4,5],
  [6,7,8],
 #vertical
  [0,3,6],
  [1,4,7],
  [2,5,8],
 #diagonal
  [0,4,8],
  [2,4,6]
  ]
  
  def won? (board)
    WIN_COMBINATIONS.each {|yaWon|
      index_0 = yaWon[0]
      index_1 = yaWon[1]
      index_2 = yaWon[2]
      
      p_1 = board [index_0]
      p_2 = board [index_1]
      p_3 = board [index_2]
      
    if p_1 == "X" && p_2 == "X" && p_3 == "X"
    return yaWon
    elsif p_1 == "O" && p_2 == "O" && p_3 == "O"
    return yaWon
  end
    }
  
    return false
  end
  
  def full?(board)
    board.all? {|index| index == "X" || index == "O"}
 end

def draw?(board)
  if !won?(board) && full?(board)
    return true 
  end
end

def over?(board)
  if won?(board) || draw?(board)
    return true
  end
end

def winner(board)
  index = []
  index = won?(board)
  if index == false
    return nil
  else
  if board[index[0]] == "X"
      return "X"
    elsif board[index[0]] == "O"
      return "O"
    else return false
    end
  end
  end
    
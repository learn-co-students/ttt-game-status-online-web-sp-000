# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2], #Top row 
  [3, 4, 5], #Middle Row 
  [6, 7, 8], #Bottom Row
  [0, 4, 8], #Diagonal 
  [2, 4, 6], #Diagonal
  [0, 3, 6], #Vertical row 1 
  [1, 4, 7], #Vertical Row 2 
  [2, 5, 8] #Vertical Row 3
  ]

  
  def won?(board)
    WIN_COMBINATIONS.detect{|combo| board[combo[0]] == board[combo[1]] && 
    board[combo[1]] == board[combo[2]] && position_taken?(board, combo[0])}
  end 
  
  def full?(board)
    if WIN_COMBINATIONS.any?{|combo| board[combo[0]] == " "}
      false 
    else 
      true 
    end
  end 
  
  def draw?(board)
    if !won?(board) && full?(board)
      return true 
    elseif !won?(board) && !full?(board)
      return false 
    else won?(board) 
      return false
    end
  end
  
  def over?(board)
    if draw?(board) || full?(board) || won?(board)
      true
    else
      false
    end
  end
  
  def winner(board)
    win_combo = won?(board)
    if win_combo 
      board[win_combo[0]]
    else
      nil
    end
  end
      
        
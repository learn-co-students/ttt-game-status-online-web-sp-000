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
  [2,4,6]
  ]
  
  #won?
  def won?(board)
    WIN_COMBINATIONS.each do |win_combination|
      win_index_1 = win_combination[0]
      win_index_2 = win_combination[1]
      win_index_3 = win_combination[2]
      
      position_1 = board[win_index_1]
      position_2 = board[win_index_2]
      position_3 = board[win_index_3]
      
      if (position_1 == "X" && position_2 == "X" && position_3 == "X") || (position_1 == "O" && position_2 == "O" && position_3 == "O")
        return win_combination
      else
        won?(board) = false
      end
    end
  end
  
  #full?
  def full?(board)
    board.all? do |index|
      index == "X" || index == "O"
    end
  end
  
  #draw?
  def draw?(board)
    won?(board) == false && full?(board) == true
  end
    
  #over?
  def over?(board)
    won?(board) == true || draw?(board) == true || full?(board) == true
  end
  
  #winner
  def winner(board)
    if won?(board) == true && win_combination.include?("X") == true
      return "X"
    elsif won?(board) == true && win_combination.include?("O") == true
      return "O"
    else
      return nil
  end
      
  
      
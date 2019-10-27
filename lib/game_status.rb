require "pry"
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
  
  def won?(board)
    WIN_COMBINATIONS.each do |win_combo|
      
      # binding.pry
      win_index_1 = win_combo[0]
      win_index_2 = win_combo[1]
      win_index_3 = win_combo[2]
      
      pos_1 = board[win_index_1]
      pos_2 = board[win_index_2]
      pos_3 = board[win_index_3]
      
      if pos_1 == "X" && pos_2 == "X" && pos_3 == "X" || pos_1 == "O" && pos_2 == "O" && pos_3 == "O"
        return win_combo
      end
    end
    false
  end
  
  def full?(board)
    board.all? do |slots| 
      slots == "X" || slots == "O"
    end
  end 
  
  def draw?(board)
    
    # x_count = 0
    # o_count = 0 
    # board.each do |letter|
      
    #   if letter == "X"
    #     x_count += 1 
    #   elsif letter == "O"
    #     o_count += 1 
    #   end 
    #   if x_count == o_count
    #     return true 
    #   end 
    #   if board[0] == "X" && board[1] == "X" && board[2] == "X"
    #     return false 
    #   end 
    #   if board[2] == "X" && board[4] == "X" && board[6] == "X"
    #     false 
    #   end 
    # end 
    
    if !won?(board) && full?(board)
      # if game not won and full board >> a draw (true)
      true 
    else 
      false 
    end 
  end 
  
  def over?(board)
    if draw?(board) || full?(board) || won?(board)
      true 
    end 
  end 
  
  def winner(board)
    idx = won?(board)
    if !idx
      return nil 
    end 
    if board[idx.first] == "X"
      "X" 
    # binding.pry
    elsif board[idx.first] == "O" 
      "O"
    end 
  end 
  
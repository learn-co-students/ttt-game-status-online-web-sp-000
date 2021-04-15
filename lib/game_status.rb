# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0, 1, 2],  #top row 
  [3, 4, 5],  #middle row 
  [6, 7, 8],   #last row 
  [0, 3, 6],   #left column
  [1, 4, 7],   #middle columnn
  [2, 5, 8],   ##right column
  [0, 4, 8],  #diangle
  [6, 4, 2]  #diangle 
]



def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]
    
    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]
    

    if (board[position_1]) == "X" &&(board[position_2]) == "X" && (board[position_3]]) == "X" 
      return win_combination
      elsif (board[position_1]) == "O" && (board[position_2) == "O" && (board[position_3) == "O" 
      return win_combination 
    end
  end
end


def full(board)
  board.all? do |moves|
    if moves == "X" or moves == "O"
      return 
    
  end
end
    
    
    
    
    
    
    
    # win_index_1 = win_combination[0]
    # win_index_2 = win_combination[1]
    # win_index_3 = win_combination[2]
    
    # position_1 = board[win_index_1]
    # position_2 = board[win_index_2]
    # position_3 = board[win_index_3]
    
    # if position_1 == "X" && position_2 =="X" && position_3 == "X"
    #   return win_combination
    # else
    #   FALSE
    # end


# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [ 
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,4,8],
  [2,4,6],
  [0,3,6],
  [1,4,7], 
  [2,5,8]
  ]
  
def won?(board)
  for win_combination in WIN_COMBINATIONS
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]
     position_1 = board[win_index_1] # load the value of the board at win_index_1
  position_2 = board[win_index_2] # load the value of the board at win_index_2
  position_3 = board[win_index_3] # load the value of the board at win_index_3
  if position_1 == "X" && position_2 == "X" && position_3 == "X"
    return win_combination
  elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
    return win_combination
  end 
  end 
  false 
end   

def full?(board)
 !board.include?(" ")
end   

def draw?(board)
  full?(board) && !won?(board)
end   

def over?(board)
  full?(board) || won?(board)
end   

def winner(board)
  win_combination = won?(board)
  if win_combination 
    index = win_combination[0]
    board[index]
  else 
    nil  
  end   
end   
# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0,1,2],  #top row 
  [3,4,5],  #middle row 
  [6,7,8],  #bottom row 
  [0,4,8],  #left diagonal 
  [2,4,6],  #right diagonal 
  [0,3,6],  #left column
  [1,4,7],  #middle column  
  [2,5,8]   #right column 
]

# determines if the game is won or not 
# return false for empty board or draw 
# else returns an array of the winning combo 

def won?(board)
  return false if board.all? { |index| index == " " || index == "" }
  winning_combo = [] 
  WIN_COMBINATIONS.each do |combo|
    if combo.all? { |index| board[index] == "X"} || combo.all? { |index| board[index] == "O"}
      winning_combo = combo 
    end
  end
  if winning_combo.empty? 
    return false 
  else 
    return winning_combo
  end 
end 

# returns true is the board is full 

def full?(board)
  board.all? do |index|
    index == "X" || index == "O"
  end
end 

# returns true if the board is full and has not been won 

def draw?(board)
  if full?(board) && !won?(board)
    true 
  else 
    false 
  end 
 end 

 # returns true if the game has been won, if the game is a draw or if the board is full 

def over?(board)
  if draw?(board) || full?(board) || won?(board) 
    true 
  else 
    false 
  end 
end 

# returns winner - "X" or "O" depending on which token won 
# returns nil if there is no winner 

def winner(board)
  if won?(board)
    return board[won?(board)[0]]
  else
    return nil 
  end 
end

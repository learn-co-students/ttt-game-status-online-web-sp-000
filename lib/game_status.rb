# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
#These are the board array indicies that are winning combinations
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

#won? compares and checks the board array indicides against WIN_COMBINATIONS indicies to see if each element is either "X" or "O". If all three indicies are an "X" or "O", then it returns the array from WIN_COMBINATIONS that matches.
def won?(board)
  WIN_COMBINATIONS.detect do |element|
  if board[element[0]] == "X" && board[element[1]] == "X" && board[element[2]] == "X"
    element
  elsif board[element[0]] == "O" && board[element[1]] == "O" && board[element[2]] == "O"
    element
  else
    false
  end
  end
end

#Checks to see if the board array elements are full with "X"s and "O"s.
def full?(board)
  board.all? { |element| element == "X" || element == "O" }
end


#Checks to see if there is a draw. If there is no winning combination (nil value) and the board is full (true) it returns true, otherwise returns false.
def draw?(board)
  if won?(board) == nil && full?(board) == true
    true
  else
    false
  end
end


#Checks to see if the game is over. It checks for a draw and returns true. Checks for NOT no value on #won? (I.E. there is a winning combination) and the board is full, returns true. Lastly, checks for NOT no value on #won? (I.E. there is a winning combination) and the board isn't full, returns true. Otherwise returns false and the game isnt over.
def over?(board)
  if draw?(board)
    true
  elsif won?(board) != nil && full?(board) == true
    true
  elsif won?(board) != nil && full?(board) == false
    true
  else
    false
  end
end


#Checks to see which player: "X" or "O" is the winner and return that letter. If the #won? method returns a value (the winning combination array) we take the board array and use the winning combination to see which character "X" or "O" has won.
def winner(board)
  if won?(board) != nil
    board[won?(board)[0]]
  else
  end
end




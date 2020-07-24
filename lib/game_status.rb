# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2], #top row
  [3, 4, 5], #middle row
  [6, 7, 8], #bottom row
  [0, 4, 8], #left diagonal
  [2, 4, 6], #right diagonal
  [0, 3, 6], #left column
  [1, 4, 7], #middle column
  [2, 5, 8]  #right column
  ]
  
#define #won? method here
def won?(board)
  if board == [" ", " ", " ", " ", " ", " ", " ", " ", " "]
    return false
  end

#counting so we don't return false until we have looked at all of the combinations.
count = 0

  WIN_COMBINATIONS.each do |combo|
    count = count + 1
    if board[combo[0]] == "X" && board[combo[1]] == "X" && board[combo[2]] == "X"
      return combo
    elsif board[combo[0]] == "O" && board[combo[1]] == "O" && board[combo[2]] == "O"
      return combo
    elsif count == 8
          return false
    end
  end
end


#defining the #full? method
def full?(board)
  if board.any?(" ")
    return false
  else
    return true
  end
end


#defining the #draw? method
def draw?(board)
  if won?(board) == false && full?(board) == false
    return false
  elsif won?(board) == true
    return false
  elsif won?(board) == false && full?(board) == true
    return true
  end
end

#method to determine if the game is over
def over?(board)
  #board that has been won and the board is NOT full --> true
  if won?(board) != false && full?(board) == false
    return true
  #board that has been won and the board is full --> true
  elsif won?(board) != false && full?(board) == true
    return true
  #board that is still in-progress --> false
  elsif won?(board) == false && full?(board) == false
    return false
  #board that's a draw --> true
  elsif draw?(board) == true
    return true
  end
end

#method to determine the winner and returns the winning token
def winner(board)
  #setting the index of the win into a variable, win
  win = won?(board)
  #now returning nil if there is no winner
  if won?(board) == false
    return nil
  #all indexes should have the same token for a win, so we're only checking the first
  elsif board[win[0]] == "X" && won?(board) != false
    return "X"
  elsif board[win[0]] == "O" && won?(board) != false
    return "O"
  end
end
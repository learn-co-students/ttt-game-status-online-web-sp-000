# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6]
  ]
#determines if a win
def won? (board)
  WIN_COMBINATIONS.each do |combo|
    #creates an array to test with #all?
    posit = [" ", " ", " "]
    counter = 0
    #starts loop to test posit
    combo.each do |windex|
    posit[counter] = board [windex]
    counter +=1
    #tests for full array
      if posit.all? {|var| var == "X"}
        return combo
      elsif posit.all? {|var| var == "O"}
        return combo
      end
    end
  end
  return false
end

#test if the board is full
def full? (board)
  #if there is a blank space, returns false, otherwise true
  !(board.detect {|posit| posit == " "})
end
  
#test if there is a draw
def draw? (board)
  if full?(board) == true
    if won?(board) == false
      return true
    end
  else
    return false
  end
end

#test if game is over
def over? (board)
  if draw? (board) == true
    return true
  elsif won? (board) == true
    return true
  else
    return false
  end
end
     
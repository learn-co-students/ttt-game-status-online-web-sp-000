# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS =
  [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8],
    [0, 4, 8],
    [2, 4, 6]
    ]
    
    def won?(board)
      #return false/nil if there is no win combination present in board
      #return winning indexes as array if there's a win 
      #use each or higher level iterator to return correct board indexes that created win
      #use helper method position_taken
      
    def full?(board)
      #returns true if every element contains X or O, false if there's not an avail position
      
    def draw?(board)
      #returns true if board has not been won but is full, false if board is not won and not full, and false if board is won
      #will use above methods
      
    def over?(board)
      #returns true if board has been won, is a draw, or is full
      #will use above methods
      
    def winner(board)
      #returns token X or O who has won the game
      #uses methods above and their return values
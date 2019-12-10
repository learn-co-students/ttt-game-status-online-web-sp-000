# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],#top row 0
  [3,4,5],#middle row 1
  [6,7,8],#bottom row 2

  [0,3,6],#left column 3
  [1,4,7],#middle column 4
  [2,5,8],#right column 5

  [0,4,8],#top left to bottom right 6
  [2,4,6]#top right to bottom left 7
]

#won? method returns true if there is a win and false if there isnt
def won?(board)
  #iterate over WIN_COMBINATIONS
  WIN_COMBINATIONS.each do |current_index|
    win_index_1 = current_index[0]
    win_index_2 = current_index[1]
    win_index_3 = current_index[2]

    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]


    if position_1 == "X" &&  position_2 == "X" &&  position_3 == "X"
      return current_index
    elsif position_1 == "O" &&  position_2 == "O" &&  position_3 == "O"
      return current_index
    end
  end
  return false
end

#full board method
def full?(board)
  board.all? {|token| token == "X" || token == "O"}
end

#draw game method
def draw?(board)
  #if board is full and game is not won
  if full?(board) == true && won?(board) == false
    #return true
    return true
  #else if board is not full and game is not won
  elsif full?(board) == false && won?(board) == false
    #return false
    return false
  #else if game is won
  elsif won?(board) == true
    #return false
    return false
  end
end

#game over method
def over?(board)
  #if game is a draw or if game is won or if board is full
  if draw?(board) || won?(board) || full?(board)
    #return true
    return true
  end
end

#winner winner chicken dinner
def winner(board)
  #if game is won
  if won?(board)
    #return element at the zeroth index of winning combination 
    return board[won?(board)[0]]
  end
end

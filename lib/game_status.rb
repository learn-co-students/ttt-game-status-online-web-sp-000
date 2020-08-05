WIN_COMBINATIONS = [
  [0,1,2], #top row
  [3,4,5], #middle row
  [6,7,8], #bottom row

  [0,3,6], #left column
  [1,4,7], #middle column
  [2,5,8], #right column

  [0,4,8], #NW - SE
  [2,4,6] #NE - SW
]

def won?(board)
  board_win = false
# Iterate over the possible win combinations defined in `WIN_COMBINATIONS` and
# check if the board has the same player token in each index of a winning
# combination.
# enumerate WIN_COMBINATIONS; isolate each win_combo
  WIN_COMBINATIONS.each do |win_combo|
    win_index_1 = win_combo[0]
    win_index_2 = win_combo[1]
    win_index_3 = win_combo[2]

    # compare win_combo to corresponding board positions
    if (board[win_index_1] == "X" && board[win_index_2] == "X" && board[win_index_3] == "X") || (board[win_index_1] == "O" && board[win_index_2] == "O" && board[win_index_3] == "O")
      # if they match, that's a win
      board_win = win_combo
    end
    # if not, keep enumerating
  end
  board_win
end

def full?(board)
  board.none?{|cell| cell == " " || cell == ""}
end

def draw?(board)
  # returns true if the board has
  # not been won but is full, false if the board is not won and the board is not
  # full, and false if the board is won
  if (!won?(board) && full?(board))
    true
  elsif (!won?(board) && !full?(board)) || won?(board)
    false
  end
end

def over?(board)
  # eturns true if the board has
  # been won, is a draw, or is full.
  (won?(board) || draw?(board) || full?(board)) ? true : false
end

def winner(board)
  # return the token, "X" or "O" that
  # has won the game given a winning board.
  win = won?(board)
  win ? board[win[0]] : nil
end

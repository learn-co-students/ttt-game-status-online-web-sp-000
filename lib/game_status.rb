# Helper Method
# returns true if board's index value has been taken and false if not
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
].freeze

# detects first win then returns the win_combo (ex: [2,4,6]) OR if there is no win returns nil
# win when win_combo's array indexes 0, 1, 2 valuesa are all equal & no empty spaces on board
def won?(board)
  WIN_COMBINATIONS.detect do |win_combo|
    board[win_combo[0]] == board[win_combo[1]] &&
    board[win_combo[0]] == board[win_combo[2]] &&
    position_taken?(board, win_combo[0])
  end
end

# returns true if every board element is "X" or "O" (full), otherwise returns false
def full?(board)
  board.all?{|token| token == "X" || token == "O"}

  # true if board.count("X") + board.count("O") == 9
end

# returns true if the board has not been won but is full,
# returns false if the board is not won and the board is not full, and false if the board is won
def draw?(board)
  full?(board) && !won?(board)

  # true if full?(board) == true && won?(board) == nil
end

# returns true if the board has been won, is a draw, or is full
def over?(board)
  won?(board) || full?(board)

  # draw?(board) || !(won?(board) == nil)

  # true if draw?(board) == true || !(won?(board) == nil)
end

# returns either "X" or "O", depending on which has won the game given a winning board
def winner(board)
  if winning_combo = won?(board)
    board[winning_combo.first]
  end

  # x_arr = board.each_index.select{|i| board[i] == 'X'}
  # o_arr = board.each_index.select{|i| board[i] == 'O'}
  # if won?(board) == nil
  #   nil
  # elsif (won?(board)-x_arr).empty?
  #   p "X"
  # elsif (won?(board)-o_arr).empty?
  #   p "O"
  # end
end

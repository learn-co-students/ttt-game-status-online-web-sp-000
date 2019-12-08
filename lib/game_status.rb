def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end# Helper Method


WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6]
] # Define your WIN_COMBINATIONS constant
def won?(board)
  win_combo = nil
  WIN_COMBINATIONS.each do |win_combination|
    # win_combination is a 3 element array of indexes that compose a win, [0,1,2]
    # grab each index from the win_combination that composes a win.
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]

    position_1 = board[win_index_1] # load the value of the board at win_index_1
    position_2 = board[win_index_2] # load the value of the board at win_index_2
    position_3 = board[win_index_3] # load the value of the board at win_index_3

    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      win_combo = win_combination # return the win_combination indexes that won
      end
    if position_1 == "O" && position_2 == "O" && position_3 == "O"
       win_combo = win_combination # return the win_combination indexes that won.
     end
  end
  return win_combo
end

def full?(board)
  turn_count(board) == 9
end

def full?(board)
  board.none? do |i|
    i == " " || i.nil?
  end
end

def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
  won?(board) || draw?(board)
end

def winner(board)
  if win_combo = won?(board)
    board[win_combo]
  end
end

def winner(board)
  if won?(board) != nil
    winner = board[won?(board)[0]]
  end
end

puts "WINNNNERRRRRR"

board = Array.new(9, " ")

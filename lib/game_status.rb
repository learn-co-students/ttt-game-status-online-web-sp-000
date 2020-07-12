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
  [6, 4, 2]
]

def won?(board)

  WIN_COMBINATIONS.each do |win_combo|
    pos_1 = board[win_combo[0]]
    pos_2 = board[win_combo[1]]
    pos_3 = board[win_combo[2]]

    x_wins = pos_1 == "X" && pos_2 == "X" && pos_3 == "X"
    y_wins = pos_1 == "O" && pos_2 == "O" && pos_3 == "O"

    if x_wins || y_wins
      return win_combo
    else
      false
    end
  end

  return nil
end

def full?(board)
  board.none? {|i| i == "   " || i == " " || i == "" || i == nil}
end

def draw?(board)
  !won?(board) && full?(board)
end

def over?(board)
  #no need to call draw? method here- it would be redundant
  won?(board) || full?(board)
end

def winner(board)
  if board.empty?
    return nil
  end

  winning_combo = won?(board)
  if winning_combo != nil
    return board[winning_combo[0]]
  else
    return nil
  end
end

def method2
  x_indices, o_indices = []
  for i in 0..board.length do
    x_indices << i if board[i] == "X"
    o_indices << i if board[o] == "O"
  end


  WIN_COMBINATIONS.each do |win_combo|
    x_matches = x_indices & win_combo
    if x_matches.length == 3
      return true
    else
      y_matches = y_indices & win_combo
      if y_matches.length == 3
        return true
      end
    end
  end
end

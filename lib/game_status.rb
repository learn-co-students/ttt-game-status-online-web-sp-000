require "pry"
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end


def won?(board)
  WIN_COMBINATIONS.each do |win_combo|
    x_win = board[win_combo[0]] == "X" && board[win_combo[1]] == "X" && board[win_combo[2]] == "X"
    o_win = board[win_combo[0]] == "O" && board[win_combo[1]] == "O" && board[win_combo[2]] == "O"
    empty_board = board == [" ", " ", " ", " ", " ", " ", " ", " ", " "]
    if x_win
      return win_combo
    elsif o_win
      return win_combo
    end
  end
  nil
end


def full?(board)
  all_XO = board.all? do |index|
  index == "X" || index == "O"
 end
end


def draw?(board)
full?(board) && !won?(board)
end


def over?(board)
won?(board) || draw?(board)
end


def won_won?(board)
  WIN_COMBINATIONS.each do |win_combo|
    x_win = board[win_combo[0]] == "X" && board[win_combo[1]] == "X" && board[win_combo[2]] == "X"
    o_win = board[win_combo[0]] == "O" && board[win_combo[1]] == "O" && board[win_combo[2]] == "O"
    empty_board = board == [" ", " ", " ", " ", " ", " ", " ", " ", " "]
    draw_board = !x_win && !o_win && full?(board)
    if x_win == true
      return true
    elsif o_win == true
      return true
    elsif draw_board || empty_board
      return nil
    end
  end
end


def winner(board)
  WIN_COMBINATIONS.each do |win_combo|
    x_win = board[win_combo[0]] == "X" && board[win_combo[1]] == "X" && board[win_combo[2]] == "X"
    o_win = board[win_combo[0]] == "O" && board[win_combo[1]] == "O" && board[win_combo[2]] == "O"
    if x_win
      return "X"
    elsif o_win
      return "O"
    end
  end
  return nil
end

# Define your WIN_COMBINATIONS constant
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

# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [

  [0,1,2], # top row win
  [3,4,5], # middle row win
  [6,7,8], # bottom row win
  [0,3,6], # left column win
  [1,4,7], # middle column win
  [2,5,8], # right column win
  [2,4,6], # diagonal win 1
  [0,4,8], # diagonal win 2

]

def won?(board)
  WIN_COMBINATIONS.each do |win_array|
  first_win_move  = win_array[0]
  second_win_move = win_array[1]
  third_win_move  = win_array[2]

    position_1 = board[first_win_move]
    position_2 = board[second_win_move]
    position_3 = board[third_win_move]

    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      return win_array
    elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
      return win_array
    end
  end
  return false
end

def full?(board)
  board.all? do |marker|
    marker == "X" || marker == "O"
end
end

def draw?(board)
  !won?(board) && full?(board)
end

def over?(board)
  won?(board) || draw?(board)
end

def winner(board)
  if win_array = won?(board)
    board[win_array.first]
  end
end

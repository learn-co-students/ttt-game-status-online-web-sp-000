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




def won?(board)

  for win_combination in WIN_COMBINATIONS
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]

    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      return win_combination
    elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
      return win_combination
    else
      false
    end
  end


  counter = 0
  while counter < board.length-1
    if position_taken?(board, counter)
      return false
      counter += 1
    else
     return false
     counter += 1
    end
  end
end

def full?(board)
  board.each do |full_board|
    if full_board == "X" || full_board == "O"
      full_board = true
    else
      full_board = false
      break
    end
  end
end

def draw?(board)
  if won?(board)
    return false
  elsif !won?(board)
    if full?(board)
      return true
    else
      return false
    end
  end
end

def over?(board)
  if won?(board)
    return true
  elsif draw?(board)
    return true
  elsif full?(board)
    return true
  else
    return false
  end
end
=begin
[0, 1, 2],
[3, 4, 5],
[6, 7, 8],
[0, 3, 6],
[1, 4, 7],
[2, 5, 8],
[0, 4, 8],
[2, 4, 6]
=end
def winner(board)
  if won?(board) && board[0] == "X" && board[1] == "X" && board[2] == "X"
    return "X"
  elsif won?(board) && board[3] == "X" && board[4] == "X" && board[5] == "X"
      return "X"
  elsif won?(board) && board[6] == "X" && board[7] == "X" && board[8] == "X"
      return "X"
  elsif won?(board) && board[0] == "X" && board[3] == "X" && board[6] == "X"
      return "X"
  elsif won?(board) && board[1] == "X" && board[4] == "X" && board[7] == "X"
      return "X"
  elsif won?(board) && board[2] == "X" && board[5] == "X" && board[8] == "X"
      return "X"
  elsif won?(board) && board[0] == "X" && board[4] == "X" && board[8] == "X"
      return "X"
  elsif won?(board) && board[2] == "X" && board[4] == "X" && board[6] == "X"
      return "X"
  elsif won?(board) && board[0] == "O" && board[1] == "O" && board[2] == "O"
      return "O"
  elsif won?(board) && board[3] == "O" && board[4] == "O" && board[5] == "O"
      return "O"
  elsif won?(board) && board[6] == "O" && board[7] == "O" && board[8] == "O"
      return "O"
  elsif won?(board) && board[0] == "O" && board[3] == "O" && board[6] == "O"
      return "O"
  elsif won?(board) && board[1] == "O" && board[4] == "O" && board[7] == "O"
      return "O"
  elsif won?(board) && board[2] == "O" && board[5] == "O" && board[8] == "O"
      return "O"
  elsif won?(board) && board[0] == "O" && board[4] == "O" && board[8] == "O"
      return "O"
  elsif won?(board) && board[2] == "O" && board[4] == "O" && board[6] == "O"
      return "O"
  else
    return nil
  end
end

# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
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
  [2,4,6]]
  
  #OUTPUT BOARD
def display_board(board) 
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def won?(board)
  WIN_COMBINATIONS.each do |win_combo|
    pos1 = win_combo[0]
    pos2 = win_combo[1]
    pos3 = win_combo[2]

    position_1 = board[pos1]
    position_2 = board[pos2]
    position_3 = board[pos3]

    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      return win_combo
    elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
      return win_combo
    end
  end
  return false
end

def full?(board)
  board.all? {|tic_tac| tic_tac == "X" || tic_tac == "O"}
end

def draw?(board)
  if !won?(board) && full?(board)
    return true
  else
    return false
  end
end

def over?(board)
  if won?(board) || draw?(board)
    return true
  else
    return false
  end
end

def winner (board)
  win_player = won?(board)
  if win_player == false
    return nil
  else
    if board[win_player[0]] == "X"
      return "X"
    else
      return "O"
    end
  end
end

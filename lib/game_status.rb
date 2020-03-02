# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],[3,4,5],[6,7,8],
  [0,3,6],[1,4,7],[2,5,8],
  [0,4,8],[6,4,2]]

def won?(board)
  if board.all? {|position| position == " "}
    return false
  end

  WIN_COMBINATIONS.each do |win|
    if (board[win[0]] == "X" and board[win[1]] == "X" and board[win[2]] == "X") or (board[win[0]] == "O" and board[win[1]] == "O" and board[win[2]] == "O")
      return win
    end
  end

  return false
end

def full?(board)
  board.none? {|position| position==" "}
end

def draw?(board)
  win = won?(board)
  if full?(board) and (win == false)
    return true
  end

  return false
end

def over?(board)
  if draw?(board) or won?(board) or full?(board)
    return true
  end

  return false
end

def winner(board)
    win_move = won?(board)
    if win_move == false
      return nil
    else
      board[win_move[0]]
    end
end

board = ["X", "O", " ", " ", " ", " ", " ", "O", "X"]
puts winner(board)

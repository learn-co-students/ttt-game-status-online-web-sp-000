WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [6,4,2]
  ]

def won?(board)
  WIN_COMBINATIONS.each do |win_move|
    if win_move.all? {|space| board[space] == "X"} || win_move.all? {|space| board[space] == "O"}
      return win_move
      break
    end
  end
  return false
end

def full?(board)
  board.all? {|space| space == "X" || space == "O"}
end

def draw?(board)
  if !won?(board)
    return full?(board)
  else
    return false
  end
end

def over?(board)
  won?(board) || draw?(board)
end

def winner(board)
  if won?(board) == false
    return nil
  else
    WIN_COMBINATIONS.each do |win_move|
      if win_move.all? {|space| board[space] == "X"}
        return "X"
        elsif win_move.all? {|space| board[space] == "O"}
        return "O"
      end
    end
  end
end

      


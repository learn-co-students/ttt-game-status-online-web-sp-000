WIN_COMBINATIONS = [
    [0,1,2],
    [3,4,5],
    [6,7,8],
    [0,4,8],
    [2,4,6],
    [0,3,6],
    [1,4,7],
    [2,5,8]
]

def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

def won? (board)
  WIN_COMBINATIONS.each do |win_combo|
    if (board[win_combo[0]] == "X" && board[win_combo[1]] == "X" && board[win_combo[2]]== "X") || (board[win_combo[0]] == "O" && board[win_combo[1]] == "O" && board[win_combo[2]] == "O")
        return win_combo
    end
  end
  false
end

def full? (board)
  counter = 0
  full =  0
    9.times do
      if board[counter] == "X" || board[counter] == "O"
        full += 1
      end
      counter += 1
    end
  if full == 9
    true
  else
    false
  end
end


def over? (board)
  if full?(board) || won?(board)
    return true
  end
  false
end

def winner (board)
  if won?(board)
    return board[won?(board)[0]]
  else
    return nil
  end
end

def draw? (board)
  if !(won?(board)) && full?(board)
   return true
  end
  false
end


# all winning combinations of Tic Tac Toe
WIN_COMBINATIONS = [
  [0, 1, 2], # top row win
  [3, 4, 5], # middle row win
  [6, 7, 8], # bottom row win
  [0, 3, 6], # left vertical win
  [1, 4, 7], # middle vertical win
  [2, 5, 8], # right vertical win
  [6, 4, 2], # diagonal win 1
  [0, 4, 8] # diagonal win 2
]

# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# def won? procedure
# 1. for all winning options
#   2. create a variable, win_index, representing each winning index
#   3. create a variable, position, so that an object passed in can compare the object[win_index] to either 3 Xs or 3 Os

def won?(board)
  WIN_COMBINATIONS.each do |winning_combo|
    win_index1 = winning_combo[0]
    win_index2 = winning_combo[1]
    win_index3 = winning_combo[2]
    position1 = board[win_index1]
    position2 = board[win_index2]
    position3 = board[win_index3]

    if position1 == "X" && position2 == "X" && position3 == "X"
      return winning_combo # use explicit return to disrupt execution flowcontrol flow
    elsif position1 == "O" && position2 == "O" && position3 == "O"
      return winning_combo
    end
  end
  false
end

def full?(board)
  for i in board
    if i == nil || i == "" || i == " "
      return false
    else i == "X" || i == "O"
      true
    end
  end
end

def draw?(board)
 if won?(board)
  false
 elsif won?(board) == false && full?(board) == false
  false
 else won?(board) == false && full?(board)
  true
 end
end

def over?(board)
  if draw?(board)
    true
  elsif won?(board) && full?(board)
    true
  elsif won?(board) && full?(board) == false
    true
  else
    false
  end
end

def winner(board)
  if won?(board)
    WIN_COMBINATIONS.each do |winning_combo|
      win_index1 = winning_combo[0]
      win_index2 = winning_combo[1]
      win_index3 = winning_combo[2]
      position1 = board[win_index1]
      position2 = board[win_index2]
      position3 = board[win_index3]
  
      if position1 == "X" && position2 == "X" && position3 == "X"
        return board[win_index1] # use explicit return to disrupt execution flowcontrol flow
      elsif position1 == "O" && position2 == "O" && position3 == "O"
        return board[win_index1]
      end
    end
  else
    nil
  end
end

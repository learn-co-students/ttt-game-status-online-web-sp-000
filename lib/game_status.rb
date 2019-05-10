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
  [2,4,6]
]

def won?(board)
  won = false
  WIN_COMBINATIONS.each do |win_combination|
    win_space_1 = win_combination[0]
    win_space_2 = win_combination[1]
    win_space_3 = win_combination[2]
    
    board_1 = board[win_space_1]
    board_2 = board[win_space_2]
    board_3 = board[win_space_3]
    
    if board_1 == "X" && board_2 == "X" && board_3 == "X"
      won = true
      return win_combination
      break
    elsif board_1 == "O" && board_2 == "O" && board_3 == "O"
      won = true
      return win_combination
      break
    end
  end
  if won == false
    return false
  end
end 

def full?(board)
  board.all? do |space|
    space == "X" || space == "O"
  end
end 

def draw?(board)
  !won?(board) && full?(board)
end 

def over?(board)
  won?(board) || draw?(board) || full?(board)
end 

def winner(board)
  if won?(board) != false
    winning_positions = won?(board)
    first_spot = winning_positions[0]
    token = board[first_spot]
    return token
  else 
    return nil
  end
end 
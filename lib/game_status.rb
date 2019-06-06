require 'pry'
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
  WIN_COMBINATIONS.each do |win_combination|
    win_combo = []
    win_combination.each do |index_value|
      if position_taken?(board, index_value) == true
        win_combo << index_value
      end
    end
    if win_combo.length == 3
      if board[win_combo[0]] == board[win_combo[1]] && board[win_combo[1]] == board[win_combo[2]]
        return win_combo
      end
    end
  end
  return false
end

def full?(board)
  count = 0
  board.each do |position|
    if position != nil && position != " "
      count += 1
    end
  end
  if count == 9
    true
  else
    false
  end
end

def draw?(board)
  if full?(board)
    if won?(board)
      false
    else
      true
    end
  else
    if won?(board)
      false
    end
  end
end

def over?(board)
  if full?(board) == true || won?(board).kind_of?(Array) == true || draw?(board) == true
    true
  else
    false
  end
end

def winner(board)
  if won?(board).kind_of?(Array) == true
    win_combo = won?(board)
    board[win_combo[0]]
  else
    nil 
  end
end

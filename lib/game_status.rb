
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

def full?(board)
  board.none? do |space|
    space == " "
  end
end

def draw?(board)
  if (full?(board) == true) && (won?(board) == false)
    true
  else
    false
  end
end

def won?(board)
  winning_combination = nil
  WIN_COMBINATIONS.each do |combo|
    if combo.all? {|idx| board[idx] == "X"}
      winning_combination = combo
    elsif combo.all? {|idx| board[idx] == "O"}
      winning_combination = combo
    else
      false
    end
  end
  if winning_combination != nil
    winning_combination
  else
    false
  end
end

def winner(board)
  if won?(board) == false
    nil
  elsif (won?(board)).all? {|idx| board[idx] == "X"}
    "X"
  elsif (won?(board)).all? {|idx| board[idx] == "O"}
    "O"
  end
end

def over?(board)
  if won?(board) != false
    true
  elsif draw?(board) == true
    true
  else
    false
  end
end

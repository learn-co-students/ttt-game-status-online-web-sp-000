# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5], # Middle row
  [6,7,8], # Bottom row
  [0,3,6], # Left column
  [1,4,7], # Middle column
  [2,5,8], # Right column
  [0,4,8], # Left diagonal
  [2,4,6]  # Right diagonal
]

def xwin(array)
  array.all? {|k| k == "X" }
end

def owin(array)
  array.all? {|k| k == "O" }
end

def full?(board)
  board.none? {|k| k == " " }
end

def won?(board)
  WIN_COMBINATIONS.each do |i|
    won = []
    i.each do |j|
      won << board[j]
    end
    if xwin(won)
      return i
    elsif owin(won)
      return i
    end
    end
  return false
end

def draw?(board)
  if full?(board)
    if !won?(board)
      return true
    end
  end
    return false
end


def over?(board)
  if draw?(board) || won?(board)
    return true
  end
  return false
end

def winner(board)
  WIN_COMBINATIONS.each do |i|
    won = []
    i.each do |j|
      won << board[j]
    end
    if xwin(won)
      return "X"
    elsif owin(won)
      return "O"
      end
      end
    return nil
end

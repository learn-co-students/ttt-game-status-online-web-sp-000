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
  [6,4,2]
]

def won?(board)
      WIN_COMBINATIONS.each {|n|
        index1 = n[0]
        index2 = n[1]
        index3 = n[2]

        position1 = board[index1]
        position2 = board[index2]
        position3 = board[index3]

        if position1 == "X" && position2 == "X" && position3 == "X"
          return n
        elsif position1 == "O" && position2 == "O" && position3 == "O"
          return n
        end
      }
      return false
end

def full? (board)
  board.all? { |i| i == "X" || i == "O"  }
end

def draw? (board)
  if !won?(board) && full?(board)
    return true
  else
    return false
  end
end

def over? (board)
  if draw?(board)
    return true
  elsif won?(board) && full?(board)
    return true
  elsif won?(board) && !full?(board)
    return true
  end
end

def winner (board)
  win = []
  win = won?(board)
  if win == false
    return nil
  else
    if board[win[0]] == "X"
      return "X"
    else
      return "O"
    end
  end
end

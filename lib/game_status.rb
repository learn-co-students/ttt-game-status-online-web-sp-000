# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6]
]


def won?(board)
count = 0
  until count > 7 do
  #use count as a selecter for index of WIN_COMBINATIONS
   win_array = WIN_COMBINATIONS[count]
   board_array = []
  #retrieve indexes from board that correspond to WIN_COMBINATIONS[i]
    win_array.each do |index|
      board_array << board[index]
    end
  #if all x or o then game over (break)
  if board_array == ["X", "X", "X"] || board_array == ["O", "O", "O"]
    return win_array
  else
    #else reset board_array and increase count and try again
      board_array = []
      count += 1
  end
  end
end

def full?(board)
  emptys = board.detect do |index|
           index == "" || index == " "
         end
  if emptys != nil
    return false
  else
    return true
  end
end

def draw?(board)
  if !won?(board) && full?(board)
    return true
  else
    false
  end
end

def over?(board)
  if won?(board) || draw?(board) || full?(board)
    return true
  end
end
def winner(board)
  if won?(board) == nil
    return nil
  end
  board[won?(board)[0]]
end

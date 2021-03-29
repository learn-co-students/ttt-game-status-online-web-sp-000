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
    WIN_COMBINATIONS.any? do |winner|
      win_index_1 = winner[0]
      win_index_2 = winner[1]
      win_index_3 = winner[2]
      
      win_1 = board[win_index_1]
      win_2 = board[win_index_2]
      win_3 = board[win_index_3]
      
      if win_1 == "X" && win_2 == "X" && win_3 == "X"
        return winner
      elsif win_1 == "O" && win_2 == "O" && win_3 == "O"
        return winner
      else
        false
      end
    end
  end
  
  
def full?(board)
  if board.include?(" ") == true
    false
  else
    true
  end
end


def draw?(board)
  if won?(board) == false && full?(board) == true
    true
  else false
  end
end


def over?(board)
  if won?(board) != false || draw?(board) == true || full?(board) == true
    true
  else
    false
  end
end


def winner(board)
  win = won?(board)
  if over?(board) == true && won?(board) != false && draw?(board) == false 
    return board[win[0]]
  else
    nil
  end
end


def play
  until over?(board) == true
  turn(board)
end
if draw?(board) == true
  puts "Cat's Game!"
  elsif winner(board) != nil
  puts "Congratulations #{winner(board)}!"
end
end
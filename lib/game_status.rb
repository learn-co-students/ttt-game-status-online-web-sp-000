# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [[0, 1, 2], [1, 4, 7], [2, 5, 8], [0, 3, 6], [3, 4, 5], [6, 7, 8], [0, 4, 8], [2, 4, 6]]

board = ["X", "O", "X", "X", "O", " ", " ", " ", " "]

def won?(board)
  WIN_COMBINATIONS.detect do |i|
    if board[i[0]] == "X" && board[i[1]] == "X" && board[i[2]] == "X"
      return i
    elsif board[i[0]] == "O" && board[i[1]] == "O" && board[i[2]] == "O" 
      return i
    end
  end
  return false
end

# # below also works, but too much stuff typed out.
# def won?(board)
#   win_condition = nil
#   WIN_COMBINATIONS.detect do |i|
#     if board[i[0]] == "X" && board[i[1]] == "X" && board[i[2]] == "X"
#       win_condition = i
#     elsif board[i[0]] == "O" && board[i[1]] == "O" && board[i[2]] == "O" 
#       win_condition = i
#     end
#   end  
#   if win_condition != nil
#     return win_condition
#   else
#     return false
#   end  
# end

def full?(board)
  board_count = 0
  board.each do |i| 
    if i == "X" || i == "O"
      board_count += 1
    end
  end
  if board_count == 9
    return true 
  else
    return false
  end
end

# board_count = 0
# board.each do |j|
#   if j == "X" || j == "O"
#     board_count += 1
#   end
# end

# puts board_count

def draw? (board)
  if won?(board) == false && full?(board) == true
    return true
  else
    return false
  end
end

def over? (board)
  if full?(board) && !won?(board)
    return true
  elsif full?(board) || won?(board)
    return true
  else false
  end
end


# def over? (board)
#   full?(board) || won?(board) 
# end

def winner(board)
  if won?(board) == false
    return nil
  else
    board[won?(board)[0]]
  end
end

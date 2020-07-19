# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS =
  [[0,1,2],
  [3,4,5],
  [6,7,8],
  [0,4,8],
  [2,4,6],
  [0,3,6],
  [1,4,7],
  [2,5,8]]

def won?(board)
if board.all?(" ")
  false
  elsif !board.all?(" ")
        WIN_COMBINATIONS.each do |combination|
          position_1 = combination[0]
          position_2 = combination[1]
          position_3 = combination[2]
          combination.each do |position|
            if (board[position_1] == board[position_2] && board[position_2] == board[position_3]) && position_taken?(board,position_1)
              winner = board[position_1]
              return combination
            end
          end
        end
    false
    end
  end

def full?(board)
  if board.none?(" ")
    return true
  else
    return false
  end
end

def draw?(board)
  if won?(board) == false && full?(board)
    return true
  end
end

def over?(board)
  if won?(board) != false || draw?(board) == true
    return true
  end
end

def token(board)
  WIN_COMBINATIONS.each do |combination|
    position_1 = combination[0]
    position_2 = combination[1]
    position_3 = combination[2]
    combination.each do |position|
      if (board[position_1] == board[position_2] && board[position_2] == board[position_3]) && position_taken?(board,position_1)
        winner = board[position_1]
        return winner
      end
    end
  end
end

def winner(board)
  if won?(board) != false
    token(board)
  else
    return nil
  end
end

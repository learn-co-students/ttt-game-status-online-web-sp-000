board = ["X", "O", "X", "O", "X", "X", "O", "X", "O"]

def position_taken?(board, index)
  if !(board[index].nil? || board[index] == " ")
    return true
  else
    return false
  end
end

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
  WIN_COMBINATIONS.each do |i|

      win_index_1 = i[0]
      win_index_2 = i[1]
      win_index_3 = i[2]

      position_1 = board[win_index_1]
      position_2 = board[win_index_2]
      position_3 = board[win_index_3]

      if position_1 == "X" && position_2 == "X" && position_3 == "X"
        return i

      elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
         return i
       end
     end

  if board == [" ", " ", " ", " ", " ", " ", " ", " ", " "]
    return false
  end
end


  def full?(board)
  spot_taken = 0
    9.times do|i|
      if position_taken?(board, i)
        spot_taken += 1
      end
    end
    if spot_taken == 9
      return true
    else
      return false
    end
  end

  def draw?(board)

    if won?(board)
      return false
    elsif full?(board)
      return true
    end
  end

  def over?(board)
    if won?(board)
      return true
    elsif draw?(board)
      return true
    end
  end

  def winner(board)
    if won?(board)
      winner_value = won?(board)
      the_winner = winner_value[1]
      if board[the_winner] == "X"
        return "X"
      elsif board[the_winner] == "O"
        return "O"
      end
    end
  end

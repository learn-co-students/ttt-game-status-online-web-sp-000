board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

WIN_COMBINATIONS = [
  [0,1,2], #=> WIN_COMBINATION[0]
  [3,4,5], #=> WIN_COMBINATION[1]
  [6,7,8], #=> WIN_COMBINATION[2]
  [0,3,6], #=> WIN_COMBINATION[3]
  [1,4,7], #=> WIN_COMBINATION[4]
  [2,5,8], #=> WIN_COMBINATION[5]
  [0,4,8], #=> WIN_COMBINATION[6]
  [2,4,6]  #=> WIN_COMBINATION[7]
]


def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    win_combination.each do |element|

    position_1 = element[0]
    position_2 = element[1]
    position_3 = element[2]

    if board[position_1] == "X" && board[position_2] == "X" && board[position_3] == "X"
      true
      puts element
    elsif board[position_1] == "O" && board[position_2] == "O" && board[position_3] == "O"
      true
      puts element
    else
      false
    end
  end
  end
end

won?(board)

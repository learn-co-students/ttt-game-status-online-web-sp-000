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
  num_winning_combos = WIN_COMBINATIONS.count #determines count of the number of winning combinations

# Look at the board for "X" and "O" in the winning combination indexes
  (num_winning_combos).times {|i|
      win_combo = [""]

      # if all values equal X return true
      all_X = WIN_COMBINATIONS[i].all? do |j|
        board[j] == "X"
      end

      # if all values euql O return true
      all_O = WIN_COMBINATIONS[i].all? do |n|
        board[n] == "O"
      end

      # if all_X or all_O true then return winning combination
      if (all_X == true || all_O == true)
        status = WIN_COMBINATIONS[i]
        #puts "#{status}"
        return status
      end

  }
false #returns false if no winning combination found
end

def full?(board)
 board.all?{|i| (i == "X") || (i == "O")} #? false : true #If no blank spaces are found return true
end

def draw?(board)
  if (won?(board) == false && full?(board) == true) #if no winning combination found and the board is full, return true
    true
  else
    false
  end

end

def over?(board)
  if (draw?(board) == true || won?(board) != false) #if there is a draw or a winner then return true
    true
  else
    false
  end
end


def winner(board)
  who_winner = won?(board) #determines which rows the board was won in
  if who_winner != false
    board[who_winner[0]] #searches the 1st value of the winning index to see who the winner was
  else
    nil
  end
end

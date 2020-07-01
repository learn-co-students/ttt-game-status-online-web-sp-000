


# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5], # Middle row
  [6,7,8], # Bottom row
  [0,3,6], # First column
  [1,4,7], # Middle column
  [2,5,8], # Third column
  [0,4,8], # Diagonal down
  [2,4,6], # Diagonal up
]

def won?(array)
  # assign a variable to the constant WIN_COMBINATIONS to work with
  win_combination = WIN_COMBINATIONS
  #iterate through untill we find a winning combo
  win_combination.find do |index|
    #check on the winning positions of the board and assign the boards value for each space
    winning_positions = [array[index[0]], array[index[1]], array[index[2]]]
    # check if all spaces are either X or O
    win_X = winning_positions.all? do |position|
      position == "X"
    end
    win_O = winning_positions.all? do |position|
      position == "O"
    end
    # report the results of the tests
    if win_X == true || win_O == true
      return winning_index = [index[0], index[1], index[2]]
    else
      false
    end
  end
end


def full?(array)
  !array.include?(" ")
end


def draw?(array)
  if !won?(array) && full?(array)
    true
  elsif !full?(array) && !won?(array)
    false
  else won?(array)
    false
  end
end


def over?(array)
  if won?(array) || full?(array) || draw?(array)
    true
  else
    false
  end
end


def winner(array)
  if won?(array)
    return array[won?(array)[0]]
  else
    nil
  end
end

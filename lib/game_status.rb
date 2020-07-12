require 'pry'
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

def full? (board)
    # Declare counters
    counter=0
    board_count = 0
    while counter < 9
        if position_taken?(board, counter) == true
            board_count += 1
        end
        counter += 1 # COunter after if but inside While
    end
    if board_count < board.length
        return false
    else
        return true
    end
end



def won?(board)
  # WIN_COMBINATIONS.detect do |combo|
  #   board[combo[0]] == board[combo[1]] &&
  #   board[combo[1]] == board[combo[2]] &&
  #   position_taken?(board, combo[0])
  # end

   win_array = []
   index = 0
  #  if full?(board) == true
  #      #return false
  #    elsif board.all? {|cell| cell == " "}
  #        return false
  #   return false
  #   else
        WIN_COMBINATIONS.each do |win_array|
            if position_taken?(board, win_array[0])
                if board[win_array[0]] == board[win_array[1]] && board[win_array[1]] == board[win_array[2]]
                  #puts win_array
                  # binding.pry
                  return win_array
                end
            end
        end

    #end
    false
end

def draw?(board)
  if !won?(board) && full?(board)
<<<<<<< HEAD
    true
    elsif (!won?(board) && !full?(board)) || won?(board)
      false
    end

=======
    #return true
  elsif !won?(board) && !full?(board)
    #return false
  else
    #return false
  end
>>>>>>> 8e9fea75491423adab7b3bccec4a50650f22a1ee
end


def over?(board)
  if  won?(board) && !full?(board)
    return true
  elsif draw?(board)
    return true
  elsif won?(board) && full?(board)
    return true
  elsif !won?(board) && !full?(board)
    return false
  else
    return false
  end

end


def winner(board)
  # if won?(board) == false
  #   return nil
  # else
  if
    winning_array = won?(board)
    player = board[winning_array[0]]
    return player
   end

end

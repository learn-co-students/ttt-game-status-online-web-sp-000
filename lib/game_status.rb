# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end


# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],#top row
  [3,4,5],#middle row
  [6,7,8],#bottom row
  [0,3,6], # left colum
  [1,4,7], # middle colum
  [2,5,8], # right colum
  [0,4,8], #diagonal 1
  [2,4,6] # diagonal 2
]


# won
def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    if position_taken?(board, win_combination[0]) == true
      if board[win_combination[0]] == board[win_combination[1]] && board[win_combination[0]] == board[win_combination[2]]
        return win_combination
      end
      else
        false
      end
    end
    false
  end
#won



#full

def full?(board)
board.none?{|value| "#{value}" == " " }
end


#draw
def draw?(board)
  if full?(board) == true && won?(board) == false
  true
  else full?(board) == false
    false
  end
end


#over
def over?(board)
won?(board) || draw?(board) || full?(board) ? true : false
end


#winner
def winner(board)
  if board[0] == "X" && board[1] == "X" && board[2] == "X"
    return "X"
  elsif  board[0] == "O" && board[1] == "O" && board[2] == "O"
      return "O"
  elsif board[3] == "X" && board[4] == "X" && board[5] == "X"
    return "X"
  elsif  board[3] == "O" && board[4] == "O" && board[5] == "O"
      return "O"
  elsif  board[6] == "X" && board[7] == "X" && board[8] == "X"
          return "X"
  elsif  board[6] == "O" && board[7] == "O" && board[8] == "O"
        return "O"
      elsif  board[0] == "X" && board[3] == "X" && board[6] == "X"
              return "X"
      elsif  board[0] == "O" && board[3] == "O" && board[6] == "O"
            return "O"
          elsif  board[1] == "X" && board[4] == "X" && board[7] == "X"
                  return "X"
          elsif  board[1] == "O" && board[4] == "O" && board[7] == "O"
                return "O"
              elsif  board[2] == "X" && board[5] == "X" && board[8] == "X"
                      return "X"
              elsif  board[2] == "O" && board[5] == "O" && board[8] == "O"
                    return "O"
                  elsif  board[0] == "X" && board[4] == "X" && board[8] == "X"
                          return "X"
                  elsif  board[0] == "O" && board[4] == "O" && board[8] == "O"
                        return "O"
                      elsif  board[2] == "X" && board[4] == "X" && board[6] == "X"
                              return "X"
                      elsif  board[2] == "O" && board[4] == "O" && board[6] == "O"
                            return "O"

  end
end



#winner

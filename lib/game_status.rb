# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]


def won?(board)

WIN_COMBINATIONS.each_index do |i|
  combOne = WIN_COMBINATIONS[i]

  if (board[combOne[0]] == 'X' &&
     board[combOne[1]] == 'X'  &&
     board[combOne[2]] == 'X') ||
     (board[combOne[0]] == 'O' &&
     board[combOne[1]] == 'O'  &&
     board[combOne[2]] == 'O')
     return combOne
  end
end
  return false
end

def full?(board)
   board.each do |item|
     if item == " "
       return false
     end
   end

   return true
end


def draw?(board)
   full?(board) && !won?(board)
end


def over?(board)
  won?(board) || full?(board) || draw?(board)
end


#condtion ? conditon is true : condtion is false 

def winner(board)
  w = won?(board)
  w != false ? board[w[0]] : nil
end

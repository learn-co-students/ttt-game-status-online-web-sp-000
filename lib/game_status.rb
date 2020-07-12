# Helper Method

def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end


  WIN_COMBINATIONS = [
    [0,1,2],
    [3,4,5],
    [6,7,8],
    [0,4,8],
    [2,4,6],
    [0,3,6],
    [2,5,8],
    [1,4,7]
  ]

def won?(board)
# WIN_COMBINATIONS.find {|combo| board[combo[0]] == board[combo[1]] && board[combo[2]] == board[combo[0]] && board[combo[0]] != " "}
  WIN_COMBINATIONS.each do |combo| #combo is an array of board indexes
    if board[combo[0]] == board[combo[1]] && board[combo[2]] == board[combo[0]] && board[combo[0]] != " "
      return combo
    end
  end
  false
end

def full?(board)
  board.all? {|position| position != " "}
end

def draw?(board)
  if full?(board) && !(won?(board))
    true
  end
end

def over?(board)
  if won?(board) || full?(board) || draw?(board)
    true
  end
end

def winner(board)
  #(DOESNT WORK)
   #WIN_COMBINATIONS.each do |combo|
    #if board[combo[0]] == "X"
      #return "X"
    #elsif board[combo[0]] == "O"
      #return "O"
    #end
  #end
#(DOESNT WORK)
    #if won?(board) && board.any? {|position| position == "X"}
      #return "X"
    #elsif won?(board) && board.any? {|position| position == "O"}
      #return "O"
    #end



#(WORKS: ONE LINER METHOD)
#def winner(board)
  #won?(board) ? board[won?(board)[0]] : nil
#end

    if won?(board)
      moves = won?(board)
      first_move = moves.first #or moves[0]
     return board[first_move]
    if board[first_move[0]] == "X"
      return "X"
    elsif board[first_move[0]] == "O"
      return "O"
        end
      end
    end

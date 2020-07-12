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
  [6,4,2]
  ]
  
#won? method 
def won?(board)
  winner = nil
  WIN_COMBINATIONS.each do |combination|
    if combination.all? {|token| board[token] == "X"}
      winner = combination
    elsif combination.all? {|token| board[token] == "O"}
      winner = combination
    else
      false
    end
  end
  if winner != nil
    winner
  else
    false
  end
end

#full? method 
def full?(board)
  board.none?{|token| token == " "} 
end

#draw? method 
def draw?(board)
  if WIN_COMBINATIONS.any?{|combination| combination == won?(board)} == false && full?(board) == true 
  return true 
  end
end  

#over? method 
def over?(board)
  if draw?(board) == true 
    return true
  elsif WIN_COMBINATIONS.any?{|combination| combination == won?(board)} == true
    return true
  end
end

#winner? method
def winner(board)
  winner = nil
  WIN_COMBINATIONS.each do |combination|
    if combination.all? {|token| board[token] == "X"}
      winner = "X"
    elsif combination.all? {|token| board[token] == "O"}
      winner = "O"
    else
    end
  end
  winner
end


  
  

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
  [2,4,6]]

def won?(board)
 if board.include?("X"||"O")
   WIN_COMBINATIONS.each do |win_comb|
     #win_comb.each do |move|
     #windex << board[move]
     #if windex.all? {|i| i == array[0]}

     windex_1 = win_comb[0]
     windex_2 = win_comb[1]
     windex_3 = win_comb[2]
     position_1 = board[windex_1]
     position_2 = board[windex_2]
     position_3 = board[windex_3]
     if [position_1, position_2, position_3].all? {|i| i == position_1} && position_taken?(board, windex_1 )
       return win_comb
     end
   end
   false
 end
end

def full?(board)
  !(board.any? {|i| [" ",""].include? i})
end

def draw? (board)
  full?(board) && !won?(board)
end

def over?(board)
  if draw?(board) || won?(board) || full?(board)
    true
  end
end

def winner(board)
  if won?(board)
    return board[won?(board)[0]]
  end
end

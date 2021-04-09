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

#Should accept a board as an argument and return false/nil if there is no win combination present in the board and return the winning
# combination indexes as an array if there is a win.
def won?(board)
  WIN_COMBINATIONS.each do |combo|
    check1 = board[combo[0]]
    check2 = board[combo[1]]
    check3 = board[combo[2]]
    final_check = [check1,check2,check3]
    if final_check.all?{|char| char == check1} && check1 != " "
      return combo
    end
  end
  return false
end


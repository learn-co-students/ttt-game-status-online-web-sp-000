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

def won?(board)
  WIN_COMBINATIONS.each do |win_check|
    if board[win_check[0]] == "X" && board[win_check[1]] == "X" && board[win_check[2]] == "X"
      true
    elsif board[win_check[0]] == "O" && board[win_check[1]] == "O" && board[win_check[2]] == "O"
      true
    else
      false
    end
  end
end

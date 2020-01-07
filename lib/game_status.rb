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
  WIN_COMBINATIONS.each do |wc|
    return wc if ([ board[wc[0]], board[wc[1]], board[wc[2]] ] == ['X','X','X']) || ([ board[wc[0]], board[wc[1]], board[wc[2]] ] == ['O','O','O'])
  end
  false
end

def full?(board)
  board.all? {|spot| spot == 'X' || spot == 'O'}
end

def draw?(board)
  !won?(board) && full?(board)
end

def over?(board)
  won?(board) || draw?(board)
end

def winner(board)
  if won?(board)
    return "#{board[won?(board)[0]]}"
  end
  nil
end
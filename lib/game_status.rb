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
  [2,4,6],
]

def full?(board)
 board.all?{|move| move == "X" || move == "O"}
end

def draw?(board)
 full?(board) && !won?(board)
end

def won?(board)
  WIN_COMBINATIONS.detect do |champion|
    board[champion[0]] == board[champion[1]] && board[champion[1]] == board[champion[2]] &&
    position_taken?(board, champion[0])
  end
end

def over?(board)
 full?(board) or won?(board)
end

  def winner(board)
    if winning_combo = won?(board)
      board[winning_combo.first]
    end
  end
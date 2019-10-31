# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

def won?(board)
	WIN_COMBINATIONS.find do |win|
		win.all? {|position| board[position] == 'X'} || win.all? {|position| board[position]  == 'O'}
	end
end

def full?(board)
	board.none? {|place| place == ' ' || place == '' || place == nil}
end

def draw?(board)
	won?(board) || !full?(board) ? false : true
end

def over?(board)
	won?(board) || full?(board) ? true : false
end

def winner(board)
	won?(board) ? board[won?(board)[0]] : nil
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],  # Middle row
  [6,7,8],

  [0,3,6],
  [1,4,7],
  [2,5,8],

  [0,4,8],
  [2,4,6]
  # ETC, an array for each win combination
]

board = ["X", "O", " ", " ", " ", " ", " ", "O", "X"]
puts winner(board)
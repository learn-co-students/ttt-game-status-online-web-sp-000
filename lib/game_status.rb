WIN_COMBINATIONS = [
	[0, 1, 2],
	[3, 4, 5],
	[6, 7, 8],
	[0, 3, 6],
	[1, 4, 7],
	[2, 5, 8],
	[0, 4, 8],
	[2, 4, 6]
]

def position_taken?(board, index)
	!(board[index].nil? || board[index] == " ")
end

def won?(board)
	WIN_COMBINATIONS.find {|combi| position_taken?(board, combi[0]) && board[combi[0]] == board[combi[1]] && board[combi[0]] == board[combi[2]]}
end

def full?(board)
	board.all? {|space| space == "X" || space == "O"}
end

def draw?(board)
	!won?(board) && full?(board)
end

def over?(board)
	won?(board) || draw?(board)
end

def winner(board)
	won?(board) && board[won?(board)[0]]
end

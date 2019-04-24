# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end
board = ["X", "O", " ", " ", " ", " ", " ", "O", "X"]
# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]]
	

def won?(board)
	WIN_COMBINATIONS.each do |combo|
		 if winner = x_wins?(combo, board) || o_wins?(combo, board)
		 	return combo
		 end
	end
	return nil
end

#return true if all x's combination win
def x_wins?(combo, board)
	if combo.nil?
		return nil
	else
	combo.all?{|index_combo| board[index_combo.to_i] == "X"}
	end	
end

#return true if all o's combination win
def o_wins?(combo, board)
	if combo.nil?
		return nil
	else
	combo.all?{|index_combo| board[index_combo.to_i] == "O"}	
	end
end

def full?(board)
	board.all?{|element| element != " " && element != "" && element != nil }
end

def draw?(board)
	if full?(board) && !won?(board)
		return true
	else
		return nil
	end
end

def over?(board)
	if draw?(board) 
		return true
	elsif full?(board) && won?(board)
		return true
	elsif won?(board) && !full?(board)
		return true
	end
end

def winner(board)
	 if x_wins?(won?(board), board) 
	 	return "X"
	 elsif o_wins?(won?(board), board)
	 	return "O"
	 else
	 	return won?(board)
	 end
end




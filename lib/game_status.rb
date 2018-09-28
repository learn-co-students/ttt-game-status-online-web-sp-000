# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
[0,1,2],  # Top row
[3,4,5],  # Middle row
[6,7,8],  # Bottom row
[0,3,6],  # First col
[1,4,7],  # Second col
[2,5,8],  # Third col
[0,4,8],  # First diagonal
[2,4,6]   # Second diagonal
]

def won?(board)
    ## #find will return the first combo that evals to true
    WIN_COMBINATIONS.find do |combo|
        ##all positions in the combo are the same, and all are non-empty (if one is, all are, since all must be same)
        board[combo[0]] == board[combo[1]] && board[combo[1]] == board[combo[2]] && position_taken?(board,combo[2])
        #also note: this will return the combo for ANYTHING non-empty that gets three in a row.
        ##it's not specific to just X and O. but we're assuming the board is not full of other letters.
    end
end


def full?(board)
    board.all? do |ele|
        ele=="X" || ele=="O"
    end
end

#Build a method #draw? that accepts a board and returns true if the board has not been won but is full,
##false if the board is not won and the board is not full, and false if the board is won.
def draw?(board)
    w = won?(board)
    if (w.kind_of?(Array) == false && full?(board) == true)
        return true
        elsif w.kind_of?(Array) == true || (full?(board)== false && w.kind_of?(Array) == false)
        return false
    end
end

##Build a method #over? that accepts a board and returns true if the board has been won, is a draw, or is full.
def over?(board)
    w = won?(board)
    if w.kind_of?(Array) == true || draw?(board) == true || full?(board) == true
        return true
    end
end

def winner(board)
    w = won?(board)
    if w.kind_of?(Array) == true
        return board[w[0]]
    end
end





















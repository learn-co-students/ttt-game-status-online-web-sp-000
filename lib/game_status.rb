# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [[0, 1, 2],[3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]

def won?(board)
  combination = nil
  WIN_COMBINATIONS.each do |win_combination|
    win = win_combination.all? do |win_index|
      board[win_index] == "X"
    end
    if win
      combination = win_combination
    end
  end
  WIN_COMBINATIONS.each do |win_combination|
    win = win_combination.all? do |win_index|
      board[win_index] == "O"
    end
    if win
      combination = win_combination
    end
  end
  combination
end


def full?(board)
  board.all? {|element| element == "X" || element == "O" }
end

def draw?(board)
   full?(board) && !won?(board) ? true : false
end

def over?(board)
  full?(board) || won?(board) || draw?(board) ? true : false
end

def winner(board)
  if won?(board)
    result = won?(board)
    board[result[0]] == "X" ? "X" : "O"
  end
end

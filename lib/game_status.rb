# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS=[
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
  WIN_COMBINATIONS.each do |combo|
    index_1 = combo[0]
    index_2 = combo[1]
    index_3 = combo[2]
    space_1 = board[index_1]
    space_2 = board[index_2]
    space_3 = board[index_3]
    if space_1 == space_2 && space_2 == space_3 && position_taken?(board, index_1)
return combo
    end
  end
  false
end

def full?(board)
  board.all? do |element|
    element == "X" || element == "O"
  end
end

def draw?(board)
  !(won?(board)) && full?(board)
end

def over?(board)
  won?(board) || full?(board) || draw?(board)
end

def winner(board)
  if combo = won?(board)
  position_1 = combo[0]
  element_1 = board[position_1]
else nil
end
end

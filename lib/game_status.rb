require "pry"
# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],

  [0,4,8],
  [2,4,6],

  [0,3,6],
  [1,4,7],
  [2,5,8]
]

def won?(board)
WIN_COMBINATIONS.each do |win|
# code to show all steps
  #win_pos_1 = win[0]
  #win_pos_2 = win[1]
  #win_pos_3 = win[2]
  #see_pos_1= board[win_pos_1]
  #see_pos_2= board[win_pos_2]
  #see_pos_3= board[win_pos_3]
# code to show streamlined
  see_pos_1= board[win[0]]
  see_pos_2= board[win[1]]
  see_pos_3= board[win[2]]

  if (see_pos_1 == "X" && see_pos_2 == "X" && see_pos_3 == "X") || (see_pos_1 == "O" && see_pos_2 == "O" && see_pos_3 == "O")
    return win
  end
end
 false
end

#def full?(board)
  #board.none? do |space|
  #space == " "
  #end
#end

def full?(board)
  board.all? do |space|
  space != " "
  end
end

def draw?(board)
  if full?(board) == true && won?(board) == false
    true
  end
end

def over?(board)
 draw?(board) || won?(board)
end

def winner(board)
  if won?(board)
    board[won?(board)[0]]
  end
end

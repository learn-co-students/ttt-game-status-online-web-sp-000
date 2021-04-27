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

# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end


def won?(board)
  
  WIN_COMBINATIONS.detect do |i|
    board[i[0]] == board[i[1]] && 
    board[i[1]] == board[i[2]] && 
    position_taken?(board, i[0])
    
  end
end


def full?(board)
  board.all?{|i| i=="X" || i =="O"}
end


def draw?(board)
  if full?(board) && !won?(board)
    true
  else
    false
  end 
end


def over?(board)
  if won?(board) || full?(board) || draw?(board)
    true
  elsif won?(board) && !full?(board)
    true
  else
    false
  end
end


def turn_count(board)
  number_turns = 0
  board.each do |box|
    if box == "X" || box == "O"
      number_turns += 1
    end
  end
  number_turns
end


def current_player(board)
  if turn_count(board) == 0 || turn_count(board) % 2 == 0
    return "X"
  else
    return "O"
  end
end

def winner(board)
  if combo = won?(board)
    board[combo[0]]
  end
end


# Define your WIN_COMBINATIONS constant

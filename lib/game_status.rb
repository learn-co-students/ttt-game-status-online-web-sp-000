# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end #boolean value return

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS =
  [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8],
    [0, 4, 8],
    [2, 4, 6]
    ]

def won?(board)
  WIN_COMBINATIONS.each do |win_combination| 
      win_index_1 = win_combination[0]
      win_index_2 = win_combination[1]
      win_index_3 = win_combination[2]
          
      position_1 = board[win_index_1]
      position_2 = board[win_index_2]
      position_3 = board[win_index_3]
          

    if position_1 == "X" && position_2 == "X" && position_3 == "X" 
        return win_combination
    elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
        return win_combination
      end
    end
    false
  end

      
def full?(board)
  full_board = board.all? do |position|
    position == "X" || position == "O" 
end
end

def draw?(board)
  if won?(board)
  elsif full?(board)
  true
end
end

def over?(board)
  if won?(board)
    true
  elsif full?(board)
    true 
  elsif draw?(board)
    true
end
end
  
def winner(board)
  over?(board) #make sure it's over
  if won?(board) #see if anyone won, return that array
    index = won?(board)[0] #index = first unit of winning array
    board[index] #retrieve value of that first unit
  elsif false  
end
end
  #return a winning array
  #isolate first variable, return its value of X or O
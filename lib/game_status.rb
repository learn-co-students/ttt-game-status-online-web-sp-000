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
  [2,4,6]
]
  
  
def won?(board)
  winner = false
  WIN_COMBINATIONS.each do |win_combination|
  win_index_1 = win_combination[0]
  win_index_2 = win_combination[1]
  win_index_3 = win_combination[2]
  
 position_1 = board[win_index_1] # load the value of the board at win_index_1
  position_2 = board[win_index_2] # load the value of the board at win_index_2
  position_3 = board[win_index_3] # load the value of the board at win_index_3

  
  if position_1 == "X" && position_2 == "X" && position_3 == "X"
    return win_combination
    winner = true
    
  elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
     return win_combination
     winner = true
  end
  
end
if winner == false
  return false
end 
end

def full?(board)
  isFull = true
  board.each do |position|
      if position == " "
        isFull = false
    end
  end
  return isFull
end
    
    
def draw?(board) 
  if full?(board) == true && won?(board) == false
    return true
  elsif won?(board) == false && full?(board) == false
    return false
  elsif won?(board) == !false
    return false  
  end
end

   
def winner(board) 
  
  if won?(board) != false
    winning_array = won?(board)
    if board[winning_array[0]] == "X"
      return "X"
    elsif board[winning_array[0]] == "O"
      return "O"
    end
  end

 end
 
 def over?(board)
  if draw?(board) == true
    return true
  elsif won?(board) != false ||  full?(board) == true
    return true
  else
    return false
end
end

    
    
def turn(board)
  puts 'Please enter 1-9:'
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board, index)
    move(board, index, current_player(board))
    display_board(board)
  else
    turn(board)
  end
end
def play(board)
  turn(board) until over?(board)
  if won?(board)
    puts "Congratulations #{winner(board)}!"
  elsif draw?(board)
    puts "Cat's Game!"
  end
end
    
  
    
      
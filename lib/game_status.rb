require "pry"


def position_taken?(board, index)
  if !(board[index] == nil? || board[index] == " ")
  end
end 



# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [ 
  [0, 1, 2],  
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [6, 4, 2],     
  ]
  
 
   
def won?(board)
  if board == [" ", " ", " ", " ", " ", " ", " ", " ", " "] 
    return false 
  end 
    
  
  
  WIN_COMBINATIONS.each do |array|
   position_1 = array[0]
   position_2 = array[1]
   position_3 = array[2]
   position_4 = array[3]
   position_5 = array[4]
   position_6 = array[5]
   position_7 = array[6]
   position_8 = array[7]
   position_9 = array[8]
   
   if board[position_1] == "X" && board[position_2] == "X" && board[position_3] == "X"|| board[position_1] == "O" && board[position_2] == "O" && board[position_3] == "O" 
     then return array[0]
     end 
     if board[position_4] == "X" && board[position_5] == "X" && board[position_6] == "X" ||  board[position_4] == "O" && board[position_5] == "O" && board[position_6] == "O" 
       return[array_1]
     end 
     if array.include?"nil"
    revolve = array.to_i 
  end 
     
     
      if board[position_7] == "X" || board[position_7] == "O" 
        return array[7]
      end 
      if board[position_8] == "X" || board[position_8] == "O"
      return array[8]  
      end 
    false 
  end 
 
  
def full?(board, index)
  if !board[index].include " " 
    puts "Board is full - please start another game" 
    end  
  end 

# def draw?(board, index)
#same as full?
  
# end 

# def incomplete_board
  
# end 

# def over?
  
# end  

def winner(board, index)
  if board[index] = "X"
  puts "Winner is X"
  else 
  puts "Winner is O"
  end 
end 
end 

 
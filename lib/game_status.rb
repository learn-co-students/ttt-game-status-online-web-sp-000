# Helper Method
def position_taken?(board, win_array_index)
  !(board[win_array_index].nil? || board[win_array_index] == " ")
end 

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0,1,2], # top row 
  [3,4,5], # middle row 
  [6,7,8], # bottom row 
  [0,3,6], # 1st column
  [1,4,7], # 2nd column 
  [2,5,8], # 3rd column
  [0,4,8], # Left-right diagonal
  [2,4,6], # right-left diagonal
  
  ]

# won?
  
def won?(board)
  winning_array = WIN_COMBINATIONS.detect do |win|
    if win.all? {|index|       #when block is used within if must use curly braces
        board[index] == "X"}

    winning_array.inspect
    
    elsif win.all? {|index|
            board[index] == "O"}
    
    winning_array.inspect
    
    end
  end
end

def winner(board)
  WIN_COMBINATIONS.detect do |win|
    if win.all? {|index|
      board[index] == "X"}
    return "X"
    
    elsif win.all? {|index|
      board[index] == "O"}
    return "O"
    end
  end
end

def full?(board)
  
  board.all? {|index|
    index == "X" || index == "O"}
end


def draw?(board)
 
  full?(board)
  !won?(board)
end

def over?(board)
  
  full?(board) || won?(board)
   
end


  
=begin 
   
  # experimental code 
  
   board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
 board = ["X", " ", " ", " ", " ", " ", " ", " ", " "]
 board = ["X", "O", " ", " ", " ", " ", " ", " ", " "]
 # board = ["X", "X", "X", " ", " ", " ", " ", " ", " "]
 # board = ["X", "X", "X", "O", "O", " ", " ", " ", " "]
 board = ["X", "X", "X", "O", "O", 1, 2, 3, 4]
 board = [1, 2, 3, 4]
 board = ["X", "X", "X", "X", "X", "X", "X", "X", "X"]
  board = ["O", "O", "O", "O", "O", " ", " ", " ", " "]
   board = ["X", " ", " ", " ", "X", " ", " ", " ", "X"] 
  def won?(board)

  
  x_count = 0
  o_count = 0
  
  WIN_COMBINATIONS.each do |win_array|
    win_array.each do |win_array_index|
      position_taken?(board, win_array_index)
    
        puts " #{board[win_array_index]} #{win_array_index} #{win_array} #{board[win_array_index].count("X")}"
        x_count += board[win_array_index].count("X")
        o_count += board[win_array_index].count("O")
    end

  end 
  puts x_count # if x_count == 3 puts x_count
  puts o_count
end
  
  def won?(board)
  
  x_count = 0
  o_count = 0
  
  WIN_COMBINATIONS.each do |win_array|
    win_array.each do |win_array_index|
      position_taken?(board, win_array_index)
    
        puts " #{board[win_array_index]} #{win_array_index} #{win_array} #{board[win_array_index].count("X")}"
         x_count += board[win_array_index].count("X")
         o_count += board[win_array_index].count("O")
    end

  end 
  puts x_count # if x_count == 3 puts x_count
  puts o_count
end
  
  board.select do |i| i == "X"
end
board.select{|i| i.is_a?(Integer)}
board.select{|i| i.even? }
  
                count = 0
                WIN_COMBINATIONS.each do |array_element|
                   count += element.count
                 end
                 puts count
  
  # print "true"
         # print board
          # puts win_array_index
        
         # print win_array
         
         # print win_array_index.count("X")
    
  
  WIN_COMBINATIONS.each do |win_array|
    win_array.each do |win_array_index|
      if board[win_array_index] == "X"
      
         puts "true"
         print board
         print win_array
         print win_array_index
         # print win_array_index.count("X")
    
      end
    end
  end   
  
      WIN_COMBINATIONS.each do |win_array|
      
        X_count = 0
        
        win_array.each do |win_array_index|
          
          X_count += win_array_index.count("X") 
        
          end
       
      end
      
    if X_count == 3 
      
      print win_array 
    
    end
     
  end  
       
    
        end
      end
    end
       puts " true"
         print  board
         print win_array
         print win_array_index
    
    def turn_count(board)
  
  turn_count = 0 

  board.each do |element|
    
  turn_count += element.count("X" + "O")

  end

return turn_count

end 
    # empty?
    
     board.all? do |index|
    index != " "
  end
  
  
end 


  
  # rando thoughts 
  
  if board[win_array_index] == "X"

# board.select do |win_array_index|
# win_array_index.is_a?("X")

  # block doesn't work right, I'm not sure how to include a block in an if statement
  
      WIN_COMBINATIONS.each do |win_array|
      win_array.each do |win_array_index|
        board[win_array_index].all? |i|
        
          i == "X"
      
         puts "true"
         print board
         print win_array 
    
        end
      end
    end

  
  # returns any win arrays with X in them but does exclusively include arrays with all Xs 
  
    WIN_COMBINATIONS.each do |win_array|
      win_array.each do |win_array_index|
        if board[win_array_index] == "X"
        
         
         print board
         print win_array
         print win_array_index
    
        end
      end
    end
  
  # returns every array and does not exlude any
  
   WIN_COMBINATIONS.each do |win_array|
    win_array.all? do |win_array_index|
      board[win_array_index] == "X"
       puts "true"
       print board
       print win_array 
      
        
    end
  end
   
  WIN_COMBINATIONS.each do |win_array|
    win_array.each do |win_array_index|
      print board[win_array_index]
        
    end
  end
  
   # board.each do |X|
     # if board index == "X"
        
       # win_index == board index
        
      
 # end
  #end
#end 



def board_index(board)
    board.each do |board_index|
      print  board_index
    end
  end
    
  if board == WIN_COMBINATIONS
    puts "Winning combo detected"
  end
end
=end 

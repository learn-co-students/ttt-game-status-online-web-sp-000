# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0, 1, 2],  #top row 
  [3, 4, 5],  #middle row 
  [6, 7, 8],   #last row 
  [0, 3, 6],   #left column
  [1, 4, 7],   #middle columnn
  [2, 5, 8],   ##right column
  [0, 4, 8],  #diangle
  [6, 4, 2]  #diangle 
]



def won?(board)
  WIN_COMBINATIONS.each do |wincombo| 
    if (board[wincombo[0]]) == "X" && (board[wincombo[1]]) == "X" && (board[wincombo[2]]) == "X" 
      return wincombo 
      elsif (board[wincombo[0]]) == "O" && (board[wincombo[1]]) == "O" && (board[wincombo[2]]) == "O" 
      return wincombo
    end
  end
end

def full?(board)
  
  
end

def draw?(board)
  
  
end


def over?(board)
  
  
end

def winner(board) 
  
end


    
    
    
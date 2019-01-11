# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], #top row
  [3,4,5], #middle row
  [6,7,8], #bottom row
  [0,3,6], #left column
  [1,4,7], #middle column
  [2,5,8], #right column
  [0,4,8], #diagonal top left to bottom right
  [2,4,6]  #diagonal top right to bottom left
]

#WIN_COMBINATIONS[1]
 #=> [3, 4, 5]

 #WIN_COMBINATIONS[1][0]
 #=> 3

def won?(board)
   WIN_COMBINATIONS.find do |combo_element|
    #here we are passing in the WIN_COMBO[1][0] INDEX LOCATION and saying find it on the board
    #so if were passing in WIN_COMBO[1](3,4,5) and looking at combo_element[0](3)
    #on the board we will be looking at board[index3]
    #we are then checking if all three combo elements are the same "X/O"
   board[combo_element[0]] == board[combo_element[1]] &&
   board[combo_element[1]] == board[combo_element[2]] &&
   position_taken?(board, combo_element[0]) #use [0] bc we've already compared [1]&&[2] to it
  end
end
# return false if there is no win combo
# return winning array index if there is a win



def full?(board)
  board.all? do |letter|
    letter == "X" || letter == "O"
  end
end
#simply return false if there is an available position and true if there is not


def draw?(board)
   full?(board) && !won?(board)
  #full?(board) && won?(board) == false
  #with ^^ didnt "return true for draw"
end
#return true if board full, but not won


def over?(board)
  full?(board) || draw?(board) || won?(board)
end
#true if wone, draw or full


def winner(board)
  if winning_combo = won?(board)
  # winning_comobo = won?(board) # Erica
  # if winning_combo.present? # Erica
    board[winning_combo.first] 
  end
end

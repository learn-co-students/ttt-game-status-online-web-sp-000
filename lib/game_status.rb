# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS =[[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]]

def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    #try nested array here
    win_combination.each do |win_index|
      position_taken?(board, win_index)
      won?(board)
      #we just want the winning array to print or false/nil to print if not winning
      #maybe put win_index array into position_taken and run true false
      #win_index.each do |position|

   # position_1 = board[win_index_1]
   # position_2 = board[win_index_2]
   # position_3 = board[win_index_3]
    
    #if position_1 ==  position_2 && position_2 == position_3 && position_taken#?(board, win_index_1)
      #return win_combination
    #else 
      #false
    end
  end
end
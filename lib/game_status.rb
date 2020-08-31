def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

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
  array = WIN_COMBINATIONS.select do |combo|
              win_index_1 = combo[0]
              win_index_2 = combo[1]
              win_index_3 = combo[2]

              position_1 = board[win_index_1]
              position_2 = board[win_index_2]
              position_3 = board[win_index_3]

              if position_1 == position_2 && position_2 == position_3 && position_taken?(board, win_index_1)
                return [win_index_1, win_index_2, win_index_3]
              end
          end
  if array == []
    false
  end
end

def full?(board)
  board.none? {|i| (i == nil?) || (i == " ")}
end

def draw?(board)
  if won?(board) == false && full?(board) == true
    true
  else won?(board) == false && full?(board) == false
    false
  end
end

def over?(board)
  if won?(board) != false
    true
  elsif draw?(board) == true || full?(board) == true
    true
  else draw?(board) == false
    false
  end
end

def winner(board)
  if won?(board) != false
    winning_array = won?(board)
    winning_array.all? do |i|
      return board[i]
    end
  else won?(board) == false
    return nil
  end
end

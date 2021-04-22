# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end


# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 4, 8],
  [2, 4, 6],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8]
]

def won?(board)
     WIN_COMBINATIONS.each do |combination|
      a = combination[0]
      b = combination[1]
      c = combination[2]
      d = board[a]
      e = board[b]
      f = board[c]
      if d == e && e == f && d != " "
        return combination
      end
    end
combination = false
  end

# def full?(board)
#   [0..8].map { |n| !position_taken?(board, n) }.none?
# end

def full?(board)
  [!position_taken?(board, 0),
    !position_taken?(board, 1),
    !position_taken?(board, 2),
    !position_taken?(board, 3),
    !position_taken?(board, 4),
    !position_taken?(board, 5),
    !position_taken?(board, 6),
    !position_taken?(board, 7),
    !position_taken?(board, 8)].any? ? FALSE : TRUE
end

def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
    draw?(board) || won?(board)
end

def winner(board)
  if won?(board)
  return board[won?(board)[1]]
end
end

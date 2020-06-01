# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], #Top row
  [3,4,5], #Middle row
  [6,7,8], #Bottom row
  [0,3,6], #Left column
  [1,4,7], #Middle column
  [2,5,8], #Right column
  [0,4,8], #Back diagonal
  [2,4,6], #Forward diagonal
]

def won?(board)
  WIN_COMBINATIONS.any? do |combination|
    if (combination.all? do |position|
      board [position] == "X"
    end) ||
      (combination.all? do |position|
      board [position] == "O"
    end)
      return combination
    end
  end
end

def full?(board)
  board.all? do |position|
    position == "X" || position == "O"
  end
end

def draw?(board)
  if board.all? do |position|
    position_taken?(board, position)
  end
    if (won?(board) != false)
      return false
    end
end

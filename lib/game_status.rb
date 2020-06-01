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

=begin
def won?(board)
  if (WIN_COMBINATIONS.any? do |combination|
    combination.all? do |position|
      board[position] == "X"
      end
    end) ||
  (WIN_COMBINATIONS.any? do |combination|
    combination.all? do |position|
      board[position] == "O"
      end
    end)
      return true
  else
      return false
  end
end
=end

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

# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [123]
  [456]
  [789]
  [147]
  [258]
  [369]
  [159]
  [357]

]
# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
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

# won? returns false for an empty board
    # Failure/Error: expect(won?(board)).to be_falsey
    # NoMethodError:
    #   undefined method `won?' for #<RSpec::ExampleGroups::LibGameStatusRb::Won:0x000000027c6bc0>
    # # ./spec/game_status_spec.rb:23:in `block (3 levels) in <top (required)>'
def won?(board)
    position.include?("X") || position.include?("O")
end
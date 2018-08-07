# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
#defines a constant WIN_COMBINATIONS with arrays for each win combination
WIN_COMBINATIONS = [
  [0,1,2],  #Top Row 
  [3,4,5],  #Middle Row 
  [6,7,8],  #Bottom Row 
  [0,3,6],  #Left Column
  [1,4,7],  #Middle Column
  [2,5,8],  #Right Column
  [0,4,8],  #Left Diagonal
  [2,4,6]   #Right Diagonal
]

def won?(board)
    #won? returns false for an empty board
    board.include?("X") || board.include?("O")
    
    #returns false for a draw
    
    # returns an array of matching indexes for a top row win
    # returns an array of matching indexes for a middle row win
    # returns an array of matching indexes for a bottom row win
    # returns an array of matching indexes for a left column win
    # returns an array of matching indexes for a middle column win
    # returns an array of matching indexes for a right column win
    # returns an array of matching indexes for a left diagonal win
    # returns an array of matching indexes for a right diagonal win
    
end
   
    
  #full?
    returns true for a draw (FAILED - 10)
    returns false for an in-progress game (FAILED - 11)
  #draw?
    returns true for a draw (FAILED - 12)
    returns false for a game won in the first row (FAILED - 13)
    returns false for a won game diagonaly (FAILED - 14)
    returns false for an in-progress game (FAILED - 15)
  #over?
    returns true for a draw (FAILED - 16)
    returns true for a won game when the board is full (FAILED - 17)
    returns true for a won game when the board is not full (FAILED - 18)
    returns false for an in-progress game (FAILED - 19)
  #winner
    return X when X won (FAILED - 20)
    returns O when O won (FAILED - 21)
    returns nil when no winner (FAILED - 22)
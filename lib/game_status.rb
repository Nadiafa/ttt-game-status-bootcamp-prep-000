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
  WIN_COMBINATIONS.detect do |win_combo|
    board[win_combo[0]] == board[win_combo[1]] &&
    board[win_combo[1]] == board[win_combo[2]] &&
    position_taken?(board, win_combo[0])
  end
end

   
def full?(board)
  board.all? {|move| move == "X" || move == "O"}
end
    
def draw?(board)
  full?(board) && !won?(board)
end   

def over?(board)
  full?(board) &&won?(board)
  #   returns true for a won game when the board is full
  #   returns true for a won game when the board is not full
  #   returns false for an in-progress game
end

  # #winner
  #   return X when X won
  #   returns O when O won
  #   returns nil when no winner
    
    
    
    
    
    
    
class TicTacToe
  
  WIN_COMBINATIONS = [  ## what do these represent! use formatting to your advantage!
    [0, 1, 2], 
    [3, 4, 5], 
    [6, 7, 8], 
    [0, 3, 6], 
    [1, 4, 7], 
    [2, 5, 8], 
    [0, 4, 8], 
    [2, 4, 6] 
  ]
  
  def initialize(board = nil)  ## comes with readme
    @board = board || Array.new(9, " ")
  end
 
  def current_player ## comes with readme
    turn_count % 2 == 0 ? "X" : "O"
  end
 
  def turn_count ## comes with readme
    @board.count{|token| token == "X" || token == "O"}
  end
 
  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
  
  def input_to_index(position_string)
    ## first, understand what tests are passing in, and what it represents. what datatype?
    ## what do we need this method to return? what are we trying to accomplish?
    position_string.to_i - 1
  end
end
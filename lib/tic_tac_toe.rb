class TicTacToe
  
  #Define a WIN_COMBINATIONS constant within the TicTacToe class, and set it equal to a nested array filled with the index values for the various winning combinations possible in Tic Tac Toe.
  
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
  
#   The first test in 01_tic_tac_toe_spec.rb will ensure the requirement that when a new game of Tic Tac Toe is started — that is, when a new instance of TicTacToe is initialized — the instance of the game must set the starting state of the board, an array with 9 " " empty strings, within an instance variable named @board.

# In other words, your #initialize method should set a @board variable equal to a new, empty array that represents the game board.
  
  def initialize  ## comes with readme
    Array.new(9, " ")
  end
  
  #Define a method that prints the current board representation based on the @board instance variable.
 
  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
  
    # Define a method into which we can pass user input (in the form of a string, e.g., "1", "5", etc.) and have it return to us the corresponding index of the @board array. Remember that, from the player's point of view, the board contains spaces 1-9. But the indices in an array start their count at 0. If the user inputs 5, your method must correctly translate that from the player's perspective to the array's — accounting for the fact that @board[5] is not where the user intended to place their token.  
  def input_to_index(position_string)
    ## first, understand what tests are passing in, and what it represents. what datatype?
    ## what do we need this method to return? what are we trying to accomplish?
    position_string.to_i - 1
  end
  
  # Your #move method must take in two arguments: the index in the @board array that the player chooses and the player's token (either "X" or "O"). The second argument, the player's token, should default to "X".
  def move(index, token)
    
  end
 
  def current_player ## comes with readme
    turn_count % 2 == 0 ? "X" : "O"
  end
 
  def turn_count ## comes with readme
    @board.count{|token| token == "X" || token == "O"}
  end
  


  # Define a method into which we can pass user input (in the form of a string, e.g., "1", "5", etc.) and have it return to us the corresponding index of the @board array. Remember that, from the player's point of view, the board contains spaces 1-9. But the indices in an array start their count at 0. If the user inputs 5, your method must correctly translate that from the player's perspective to the array's — accounting for the fact that @board[5] is not where the user intended to place their token.  
  def input_to_index(position_string)
    ## first, understand what tests are passing in, and what it represents. what datatype?
    ## what do we need this method to return? what are we trying to accomplish?
    position_string.to_i - 1
  end
  
  
end
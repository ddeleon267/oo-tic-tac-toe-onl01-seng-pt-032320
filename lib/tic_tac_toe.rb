class TicTacToe

  # Define a WIN_COMBINATIONS constant within the TicTacToe class, and set it
  # equal to a nested array filled with the index values for the various
  # winning combinations possible in Tic Tac Toe.

  ## what do these represent! use formatting to your advantage!
  WIN_COMBINATIONS = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8],
    [0, 4, 8],
    [2, 4, 6]
  ]

# The first test in 01_tic_tac_toe_spec.rb will ensure the requirement that
# when a new game of Tic Tac Toe is started — that is, when a new instance of
# TicTacToe is initialized — the instance of the game must set the starting
# state of the board, an array with 9 " " empty strings, within an instance
# variable named @board.
# In other words, your #initialize method should set a @board variable equal
# to a new, empty array that represents the game board.

  def initialize
    Array.new(9, " ")
  end

  # Define a method that prints the current board representation based on the
  #  @board instance variable.
  def display_board
    ## we need a way to represent the board in a way that makes sense to the user
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end

  # Define a method into which we can pass user input (in the form of a string,
  # e.g., "1", "5", etc.) and have it return to us the corresponding index of
  # the @board array. Remember that, from the player's point of view, the board
  # contains spaces 1-9. But the indices in an array start their count at 0.
  # If the user inputs 5, your method must correctly translate that from the
  # player's perspective to the array's — accounting for the fact that @board[5]
  # is not where the user intended to place their token.
  def input_to_index(position_string)
    ## first, understand what tests are passing in, and what it represents.
    # what datatype?
    ## what do we need this method to return? what are we trying to accomplish?
    position_string.to_i - 1
  end

  # Your #move method must take in two arguments: the index in the @board
  # array that the player chooses and the player's token (either "X" or "O").
  # The second argument, the player's token, should default to "X".
  def move(index, token)

  end


  # The #position_taken? method will be responsible for evaluating the user's
  # desired move against the Tic Tac Toe board and checking to see whether
  # or not that position is already occupied. Note that this method will be
  # running after #input_to_index, so it will be checking index values. When it
  # is passed the index value for a prospective move, #position_taken? will
  # check to see if that position on the @board is vacant or if it contains an
  # "X" or an "O". If the position is free, the method should return false
  # (i.e., "the position is not taken"); otherwise, it will return true.
  def position_taken?(index)

  end


  # Build a method valid_move? that accepts a position to check and returns
  # true if the move is valid and false or nil if not. A valid move means that
  # the submitted position is: 1) present on the game board, and 2) not already
  # filled with a token
  def valid_move?(position)
  end

  # Build a method #turn to encapsulate the logic of a single complete turn
  # composed of the following routine:
  # Ask the user for their move by specifying a position between 1-9.
  # Receive the user's input.
  # Translate that input into an index value.
  # If the move is valid, make the move and display the board.
  # If the move is invalid, ask for a new move until a valid move is received.
  def turn

  end

  # This method returns the number of turns that have been played based on
  # the @board variable.
  def turn_count ## comes with readme
    @board.count{|token| token == "X" || token == "O"}
  end

  # The #current_player method should use the #turn_count method to determine
  # if it is "X"'s or "O"'s turn.
  def current_player ## comes with readme
    turn_count % 2 == 0 ? "X" : "O"
  end

  # Your #won? method should return false/nil if there is no win combination
  # present in the board and return the winning combination indexes as an array
  # if there is a win. Use your WIN_COMBINATIONS constant in this method.
  def won?

  end

  # The #full? method should return true if every element in the board contains
  # either an "X" or an "O".
  def full?

  end

  # Build a method #draw? that returns true if the board is full and has not
  # been won, false if the board is won, and false if the board is neither won
  # nor full.
  def draw?

  end

  # Build a method #over? that returns true if the board has been won or is
  # full (i.e., is a draw).
  def over?
  end

  # Given a winning @board, the #winner method should return the token, "X" or
  # "O", that has won the game.
  def winner

  end


  # The play method is the main method of the Tic Tac Toe application and is
  # responsible for the game loop. A Tic Tac Toe game must allow players to
  # take turns, checking if the game is over after every turn. At the conclusion
  # of the game, whether because it was won or ended in a draw, the game should
  # report to the user the outcome of the game.
  def play
  end
end
class Connect4
  GRID = Matrix.build()
  # Connect 4 code here
  n = [player1, player2]
  def initialize
    rows = 6
    columns = 7
    value = "X"

  # Create a matrix filled with "X" values
    matrix = Array.new(rows) { Array.new(columns, value) }

# Print the matrix
    matrix.each { |row| puts row.join(" ") }
    end

  def play(column)
  end
end

m = Matrix.build(2, 4) {|row, col| col - row }
  => Matrix[[0, 1, 2, 3], [-1, 0, 1, 2]]
m = Matrix.build(3) { rand }
  => a 3x3 matrix with random elements

# If a player successfully has 4 discs horizontally, vertically or diagonally then you should return

# "Player n wins!” where n is the current player either 1 or 2.

# If a player attempts to place a disc in a column that is full then you should return

# ”Column full!” and the next move must be taken by the same player.

# If the game has been won by a player, any following moves should return ”Game has finished!”.

# Any other move should return ”Player n has a turn” where n is the current player either 1 or 2.

# Player 1 starts the game every time and alternates with player 2.

# The columns are numbered 0-6 left to right.
# 7 columns and 6 rows

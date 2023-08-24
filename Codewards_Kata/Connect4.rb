class Connect4

  def initialize
    matrix = Array.new(6) { Array.new(7, 0) }
    @matrix = matrix
    @current_player = "Player1"
    @row = 5
    @win = false
    end
  def play(column)
    @matrix[@row][column] = @current_player
    p @matrix
    matrix_column_check(column)
    matrix_row_check()
    @win== true ? (p "you win") : (p "you loose")
    @row -= 1
    @current_player == "Player1" ? @current_player = "Player2" : @current_player = "Player1"
    p @row

  end

  def matrix_column_check(column)
    column_check = @matrix.transpose[column]
    p column_check
    total = 0
    column_check.each do |x|
      if x == @current_player
        total +=1
      else
        total = 0
      end
    end
    if total >= 4
      @win = true
    end
  end

  def matrix_row_check
    row_check = @matrix[@row]
    total = 0
    row_check.each do |x|
      if x == @current_player
        total +=1
      else
        total = 0
      end
    end
    if total >= 4
      @win = true
    end
    p row_check
  end

end

jugada = Connect4.new
jugada.play(2)
jugada.play(4)
jugada.play(3)
jugada.play(0)


# If a player successfully has 4 discs horizontally, vertically or diagonally then you should return "Player n wins!” where n is the current player either 1 or 2.

# If a player attempts to place a disc in a column that is full then you should return ”Column full!” and the next move must be taken by the same player.

# If the game has been won by a player, any following moves should return ”Game has finished!”.

# Any other move should return ”Player n has a turn” where n is the current player either 1 or 2.

# Player 1 starts the game every time and alternates with player 2.

# The columns are numbered 0-6 left to right.

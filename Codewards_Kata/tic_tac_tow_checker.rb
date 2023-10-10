require 'matrix'
def is_solved(board)

  board_M = Matrix[*board]
  board.count.times {|i| board << board_M.column(i)}

  def extract_diagonal
    each(:diagonal).to_a
  end
  def rotate
    Matrix[*to_a.map(&:reverse).transpose]
  end


  board << board_M.extract_diagonal
  board << board_M.rotate.extract_diagonal

  board.each do |row|
    if row.uniq.count == 1
      result = row.uniq[0]
      return result unless result == 0
    end
  end

  # Check if there are any empty spaces on the board
  if board.flatten.include?(0)
    return -1  # Game still ongoing
  else
    return 0  # It's a draw
  end

end

is_solved([[5,1,7],[1,1,3],[8,1,10]])

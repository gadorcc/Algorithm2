def testing()
  rows = 6
columns = 7
value = 0

# Create a matrix filled with "X" values
matrix = Array.new(rows) { Array.new(columns, value) }

# Print the matrix
matrix.each { |row| puts row.join(" ") }
p matrix
row = 5
column = 5
matrix[row][column] = 1


p matrix
end

testing()

def testing()
  rows = 6
columns = 7
value = 0

# Create a matrix filled with "X" values
matrix = Array.new(rows) { Array.new(columns, value) }

# Print the matrix
matrix.each { |row| puts row.join(" ") }
p matrix

matrix[2][5] = "1"
p matrix
end

testing()

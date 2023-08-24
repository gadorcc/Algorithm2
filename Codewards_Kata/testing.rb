def testing()
  rows = 6
columns = 7
value = 0

# Create a matrix filled with "X" values
matrix = Array.new(rows) { Array.new(columns, value) }

# Print the matrix
matrix.each { |row| puts row.join(" ") }
p matrix

matrix[i][] = 1
p matrix
column = (matrix.transpose[5])
column[3] = 2
p column

p matrix
end

testing()


a = [ "a", "b", "c", "d" ]
a.collect {|x| x + "!"}           #=> ["a!", "b!", "c!", "d!"]
a.map.with_index {|x, i| x * i}   #=> ["", "b", "cc", "ddd"]
a                                 #=> ["a", "b", "c", "d"]
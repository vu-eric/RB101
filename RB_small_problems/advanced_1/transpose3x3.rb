def transpose(matrix)
  transposed_matrix = []
  matrix.each_index do |column|
    arr_row = []
    matrix.each_index do |row|
      arr_row << matrix[row][column]
    end
    transposed_matrix[column] = arr_row
  end
  transposed_matrix
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]


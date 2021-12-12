def transpose(matrix)
  transposed_matrix = []
  matrix[0].each_index do |column|
    arr_row = []
    matrix.each_index do |row|
      arr_row << matrix[row][column]
    end
    transposed_matrix[column] = arr_row
  end
  transposed_matrix
end

puts transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
puts transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
puts transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
[[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
puts transpose([[1]]) == [[1]]


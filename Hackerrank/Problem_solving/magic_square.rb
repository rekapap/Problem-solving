# https://www.hackerrank.com/challenges/magic-square-forming/problem

def magic_square?(matrix)
  row_sums = matrix.map { |x| x.reduce(0, :+) }
  col_sums = matrix.transpose.map { |x| x.reduce(0, :+) }
  diag1_sum = (0..(matrix.size - 1)).reduce(0) do |sum, i|
    sum + matrix[i][i]
  end
  diag2_sum = (0..(matrix.size - 1)).reduce(0) do |sum, i|
    sum + matrix[i][matrix.size - 1 - i]
  end
  results = row_sums + col_sums + [diag1_sum, diag2_sum]
  results.uniq.length == 1
end

def magic_matrix_maker
  matrices = (1..9).to_a.permutation.map do |array|
    square = array.each_slice(3).to_a
    magic_square?(square) ? square : nil
  end
  matrices.compact
end

def matrix_diff(matrix1, matrix2)
  diff = 0
  (0..(matrix1.size - 1)).each do |x|
    (0..(matrix1[x].size - 1)).each do |y|
      diff += (matrix1[x][y] - matrix2[x][y]).abs
    end
  end
  diff
end

def best_matrix_diff(matrix)
  magic_matrices = [
    [[2, 7, 6], [9, 5, 1], [4, 3, 8]],
    [[2, 9, 4], [7, 5, 3], [6, 1, 8]],
    [[4, 3, 8], [9, 5, 1], [2, 7, 6]],
    [[4, 9, 2], [3, 5, 7], [8, 1, 6]],
    [[6, 1, 8], [7, 5, 3], [2, 9, 4]],
    [[6, 7, 2], [1, 5, 9], [8, 3, 4]],
    [[8, 1, 6], [3, 5, 7], [4, 9, 2]],
    [[8, 3, 4], [1, 5, 9], [6, 7, 2]]
  ]
  res = magic_matrices.map do |magic|
    matrix_diff(matrix, magic)
  end
  res.min
end

# mat2 = [[5, 3, 4], [1, 5, 8], [6, 4, 2]]
# mat = [[8, 3, 4], [1, 5, 9],[6, 7, 2]]
# # print magic_square?(mat)
# # puts

# print best_matrix_diff(mat)

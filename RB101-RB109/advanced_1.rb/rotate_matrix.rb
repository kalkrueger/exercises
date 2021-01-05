DEGREES = {90 => 1, 180 => 2, 270 => 3, 360 => 0}
ROTATE = 90

def rotate(matrix)
  DEGREES[ROTATE].times do
    transposed = []
    matrix[0].size.times { transposed << []}
    matrix.each do |array|
      array.size.times do |num|
        transposed[num].unshift(array[num])
      end
    end
    matrix = transposed
  end
  matrix
end

matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

p new_matrix1 = rotate(matrix1)
p new_matrix2 = rotate(matrix2)

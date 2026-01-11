=begin
Write your code for the 'Matrix' exercise in this file. Make the tests in
`matrix_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/matrix` directory.
=end
class Matrix
  def initialize(matrix)
    @matrix = matrix
    @rows, @columns = parse_matrix
  end

  def row(num)
    @rows[num-1]
  end

  def column(num)
    @columns[num-1]
  end

  private

  def parse_matrix
    rows = @matrix.split("\n")
    columns = []
    final_rows = []
    rows.each_with_index do |row, ind|
      row_split = row.split(' ')
      row_split.each_with_index do |rs, index|
        if columns[index]
          columns[index].push(rs.to_i)
        else
          columns[index] = [rs.to_i]
        end
      end
      if final_rows[ind]
        final_rows[ind].push(row_split.map {|r| r.to_i })
      else
        final_rows[ind] = row_split.map {|r| r.to_i }
      end
    end
    return [final_rows, columns]
  end
end
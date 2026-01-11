=begin
Two versions
SHORT WAY - smaller memory-wise and less complexity but can be slower if columns are accessed frequently

LONG WAY - more memory because we store rows and columns both but faster when accessing columns.  Also, implements a transpose on rows/columns where ruby has one built in.
=end
class Matrix
  # SHORT WAY
  def initialize(matrix)
    @rows = matrix.split("\n").map { |row| row.split.map(&:to_i) }
  end

  def row(num)
    debug @rows
    @rows[num -1]
  end

  def column(num)
    @rows.map { |row| row[num - 1]}
  end
  
  # LONG WAY
  # def initialize(matrix)
  #   @matrix = matrix
  #   @rows, @columns = parse_matrix
  # end

  # def row(num)
  #   @rows[num-1]
  # end

  # def column(num)
  #   @columns[num-1]
  # end

  # private

  # def parse_matrix
  #   rows = @matrix.split("\n")
  #   columns = []
  #   final_rows = []
  #   rows.each_with_index do |row, ind|
  #     row_split = row.split(' ')
  #     row_split.each_with_index do |rs, index|
  #       if columns[index]
  #         columns[index].push(rs.to_i)
  #       else
  #         columns[index] = [rs.to_i]
  #       end
  #     end
  #     if final_rows[ind]
  #       final_rows[ind].push(row_split.map {|r| r.to_i })
  #     else
  #       final_rows[ind] = row_split.map {|r| r.to_i }
  #     end
  #   end
  #   return [final_rows, columns]
  # end
end
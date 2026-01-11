class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    @line.split(':')[1].strip
  end

  def log_level
    @line.slice(1, @line.index(']') - 1).downcase
  end

  def reformat
    chunks = @line.split(': ').reverse
    chunks[0].strip + ' ' + chunks[1].downcase.gsub('[','(').gsub(']', ')')
  end
end

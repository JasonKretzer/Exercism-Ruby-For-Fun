class SimpleCalculator
  class UnsupportedOperation < StandardError; end
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  def self.calculate(first_operand, second_operand, operation)
    raise ArgumentError.new unless first_operand.is_a?(Numeric) && second_operand.is_a?(Numeric)

    return 'Division by zero is not allowed.' if second_operand == 0 && operation == "/"
    
    case operation
    when '+'
      "#{first_operand} + #{second_operand} = #{first_operand + second_operand}"
    when '*'
      "#{first_operand} * #{second_operand} = #{first_operand * second_operand}"
    when '/'
      "#{first_operand} / #{second_operand} = #{first_operand / second_operand}"
    else
      raise UnsupportedOperation.new
    end
  end
end

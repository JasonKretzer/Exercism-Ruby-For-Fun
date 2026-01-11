=begin
Write your code for the 'Resistor Color Duo' exercise in this file. Make the tests in
`resistor_color_duo_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/resistor-color-duo` directory.
=end
module ResistorColorDuo
  def self.value(colors)
    sum = (color_value(colors[0]) * 10) + color_value(colors[1])
  end

  def self.color_value(color)
    case color
    when 'black' then 0
    when 'brown' then 1
    when 'red' then 2
    when 'orange' then 3
    when 'yellow' then 4
    when 'green' then 5
    when 'blue' then 6
    when 'violet' then 7
    when 'grey' then 8
    when 'white' then 9
    end
  end
end
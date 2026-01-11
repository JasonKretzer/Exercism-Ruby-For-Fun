module Port
  # TODO: define the 'IDENTIFIER' constant
  IDENTIFIER = :PALE

  def self.get_identifier(city)
    city[0..3].upcase.to_sym
  end

  def self.get_terminal(ship_identifier)
    cargo = ship_identifier.to_s[0..2]
    debug cargo
    case cargo
    when 'OIL', 'GAS'
      :A
    else
      :B
    end
  end
end

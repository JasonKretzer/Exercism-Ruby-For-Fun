module SavingsAccount
  
  def self.interest_rate(balance)
    debug "bal: #{balance.to_f}"
    case balance.to_f
    when 5000.00..Float::INFINITY
      debug '>=5000'
      2.475
    when 1000.00...5000.00
      debug '>=1000'
      1.621
    when 0...1000.00
      debug '>=0'
      0.5
    else
      debug 'neg'
      3.213
    end
  end

  def self.annual_balance_update(balance)
    balance * (1 + interest_rate(balance)/100)
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    return 0 if current_balance >= desired_balance

    years = 0
    running_balance = current_balance
    while running_balance < desired_balance
      running_balance = annual_balance_update(running_balance)
      years += 1
    end
    years
  end
end

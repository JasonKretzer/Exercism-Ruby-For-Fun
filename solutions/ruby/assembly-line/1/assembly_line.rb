class AssemblyLine
  CARS_PRODUCED_PER_HOUR = 221
  MINUTES_PER_HOUR = 60
  
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    success_rate * (CARS_PRODUCED_PER_HOUR * @speed)
  end

  def working_items_per_minute
    (production_rate_per_hour/MINUTES_PER_HOUR).floor
  end

  def success_rate
    case @speed
      when 1..4
        1.0
      when 4..8
        0.9
      when 9
        0.8
      else
        0.77
    end
  end
end

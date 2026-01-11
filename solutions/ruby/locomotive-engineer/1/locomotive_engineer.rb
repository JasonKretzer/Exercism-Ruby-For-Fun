class LocomotiveEngineer
  def self.generate_list_of_wagons(*wagons)
    wagons
  end

  def self.fix_list_of_wagons(each_wagons_id, missing_wagons)
    a, b, c, *rest = each_wagons_id
    list = c, *missing_wagons, *rest, a, b
    list
  end

  def self.add_missing_stops(routing, **stops)
    routing[:stops] = stops.values
    routing
  end

  def self.extend_route_information(route, more_route_information)
    {**route, **more_route_information}
  end
end

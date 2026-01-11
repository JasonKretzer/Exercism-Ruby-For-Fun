module Year
  def self.leap?(year)
    return true if ((year % 400 == 0) || ((year % 4 == 0) && (year % 100 != 0) ))
    
    # if year % 400 == 0
    #   return true
    # end
    # if year % 4 == 0 && year % 100 != 0
    #   return true
    # end
    false
  end
end

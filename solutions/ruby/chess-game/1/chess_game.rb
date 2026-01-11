module Chess
  # TODO: define the 'RANKS' constant
  # TODO: define the 'FILES' constant
  RANKS = 1..8
  FILES = 'A'..'H'

  def self.valid_square?(rank, file)
    RANKS.include?(rank) && FILES.include?(file)
  end

  def self.nick_name(first_name, last_name)
    (first_name[0..1]+last_name[-2..]).upcase
  end

  def self.move_message(first_name, last_name, square)
    nickname = nick_name(first_name, last_name)
    return "#{nickname} attempted to move to #{square}, but that is not a valid square" unless valid_square?(square[1].to_i, square[0])

    "#{nickname} moved to #{square}"
  end
end

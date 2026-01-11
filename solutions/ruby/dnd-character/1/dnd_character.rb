class DndCharacter
  BASE_STARTING_HP = 10
  
  def self.modifier(score)
    ((score - 10)/2).floor
  end

  def initialize
    @strength = generate_score
    @intelligence = generate_score
    @wisdom = generate_score
    @dexterity = generate_score
    @constitution = generate_score
    @charisma = generate_score
    @hitpoints = BASE_STARTING_HP + self.class.modifier(constitution)
  end

  def hitpoints
    @hitpoints ||= BASE_STARTING_HP + self.class.modifier(constitution)
  end

  def strength
    @strength ||= generate_score
  end

  def intelligence
    @intelligence ||= generate_score
  end

  def wisdom
    @wisdom ||= generate_score
  end

  def dexterity
    @dexterity ||= generate_score
  end

  def constitution
    @constitution ||= generate_score
  end

  def charisma
    @charisma ||= generate_score
  end

  def generate_score
    rolls = []
    4.times{ rolls << rand(1..6)}
    rolls.sort.reverse.take(3).sum
  end
end

class Pickup < ApplicationRecord
  scope :randomize, ->(x) {
    limit(50).sample(x)
  }

  def self.accepted_types
    ['Skill', 'Special', 'Spell', 'Effect', 'Terrain']
  end

end

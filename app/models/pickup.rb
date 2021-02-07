class Pickup < ApplicationRecord
  scope :randomize, ->(x) { limit(50).sample(x)  }
  scope :drops, ->() { where.not(type: 'Terrain') }

  def self.accepted_types
    ['Skill', 'Special', 'Spell', 'Effect', 'Terrain']
  end

end
